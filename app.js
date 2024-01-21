const express = require("express")
const app = express()
const cors = require("cors")
const pool = require("./dbConfig")
const session = require("express-session")
const flash = require("express-flash")
const passport = require("passport")

const initializePassport = require("./passportConfig")
initializePassport(passport)
app.use(passport.initialize())
app.use(passport.session())

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({extended: false}))
app.use(session({
    secret : 'secret',
    resave : false,
    saveUninitialized : false
})) 
app.use(flash())


app.post("/users/register", (req, res)=>{
    let {name, email, password, password2, contact_no, date_of_birth} = req.body
    //console.log(name, email, password, contact_no, date_of_birth)
    let errors = []
    if(!name || !email || !password || !password2 || !contact_no || !date_of_birth) {
        errors.push({message: "Please enter all fields"})
    }
    if (password.length < 6) {
        errors.push({ message: "Password must be at least 6 characters long" });
    }
    
    if (password !== password2) {
        errors.push({ message: "Passwords do not match" });
    }

    if(errors.length > 0) {
        console.log(errors)
        res.json({success : false, message : errors})
        // send error messages here
    }
    else {
        pool.query(
            `SELECT * FROM users WHERE email = '${email}'`, (err, results)=>{
                if(err) throw err
                console.log(results.rows)
                if(results.rows.length > 0) {
                    res.json({success : false, message : "Email already exists."})
                    // send email exists message
                }
                else {
                    pool.query(
                        `INSERT INTO users (name, email, password, contact_no, date_of_birth)
                        VALUES('${name}', '${email}', '${password}', '${contact_no}', date '${date_of_birth}')
                        RETURNING id, email, name`, (err, results) => {
                            if(err) {
                                throw err
                            }
                            console.log(results.rows)
                            res.json({success : true, message : "Successfully registered. Redirecting to login page."})
                        }
                    )
                }
            }
        )
    }
    

    //res.json({"message":"successfully sent"})
})

app.post(
    "/users/login",
    (req, res) => {
        const {email, password} = req.body;
        pool.query(
            `SELECT * FROM users WHERE email = $1`,
            [email],
            (err, results) => {
                if (err) {
                    throw err;
                }
                console.log(results.rows);
      
                if (results.rows.length > 0) {
                    const user = results.rows[0];
                    if(user.password === password)  {
                        //return done(null, user)
                        // send login successful message
                        res.json({success : true, message : `login successful. Welcome ${user.name}.`});
                    }
                    else {
                        //return done(null, false, {message : ""})
                        res.json({success : false, message : "Password is incorrect."});
                    }
                } else {
                    // // No user
                    // return done(null, false, {
                    //   message: "No user with that email address"
                    res.json({success : false, message : "No such email address exists."});
                }
              
            }
          );
    }
);

const movies = require('./routes/movies')

app.use('/movies', movies)

app.listen(5000, ()=>{
    console.log("server is listening to port 5000...")
})