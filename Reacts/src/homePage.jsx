import { useState } from "react";

import SignIn from "./signIn.jsx";
import SignUp from "./signUp.jsx";

import Avatar from "@mui/material/Avatar";
import Button from "@mui/material/Button";
import CssBaseline from "@mui/material/CssBaseline";
import TextField from "@mui/material/TextField";
import FormControlLabel from "@mui/material/FormControlLabel";
import Checkbox from "@mui/material/Checkbox";
import Link from "@mui/material/Link";
import Grid from "@mui/material/Grid";
import Box from "@mui/material/Box";
import LockOutlinedIcon from "@mui/icons-material/LockOutlined";
import Typography from "@mui/material/Typography";
import Container from "@mui/material/Container";
import { createTheme, ThemeProvider } from "@mui/material/styles";

export default function HomePage() {
  const [signInClicked, setSignInClicked] = useState(false);
  const [signUpClicked, setSignUpClicked] = useState(false);

  function onSignInClicked() {
    setSignInClicked(true);
  }

  function onSignUpClicked() {
    setSignUpClicked(true);
  }

  const defaultTheme = createTheme();

  if (signInClicked) {
    return <SignIn />;
  } else if (signUpClicked) {
    return <SignUp />;
  }

  //else
  return (
    <ThemeProvider theme={defaultTheme}>
      <Container component="main" maxWidth="xs">
        <CssBaseline />
        <Box
          sx={{
            marginTop: 8,
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
          }}
        >
          <Typography variant="h4" fontFamily="Impact" gutterBottom>
            FlixFlair
          </Typography>
          <Button
            variant="contained"
            color="primary"
            sx={{ marginTop: 2 }}
            onClick={onSignInClicked}
          >
            Sign In
          </Button>
          <Button
            variant="contained"
            color="secondary"
            sx={{ marginTop: 2 }}
            onClick={onSignUpClicked}
          >
            Sign Up
          </Button>
        </Box>
      </Container>
    </ThemeProvider>
  );
}
