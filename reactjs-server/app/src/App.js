import React from 'react';
import axios from "axios";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './Components/Home'; // Import your Home component
import Create from './Components/Create'; // Import your Home component

const client = axios.create();
class App extends React.Component {
  state = {
    isValidToken: null
  }
  constructor() {
    super();
    client.get("http://192.168.68.130:8899/validateToken")
      .then(response => {
        this.setState({ isValidToken: response.data.isValidToken });
      });
  }
  render() {
    if (this.state.isValidToken === null) {
      return (
        <div style={{ width: "100vw", height: "100vh" }}
          className="d-flex justify-content-center align-items-center fs-1">
          <span>Loading...</span>
        </div>
      );
    }

    if (!this.state.isValidToken) {
      window.location.href = "http://192.168.68.130:8899/"; // Redirect if not valid
      return null; // Prevent rendering anything else
    }
    return (
      <Router>
        <Routes>
          <Route path="/" element={<Home />} /> {/* Home route */}
          <Route
            path="/createCourse"
            element={
              <Create />
            }
          />
        </Routes>
      </Router>
    );
  }
}

export default App;
