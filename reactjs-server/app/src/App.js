// Script
import React from 'react';
import axios from "axios";
import {
  Container,
  Row,
  Col
} from 'react-bootstrap';
import AppTopBar from './components/AppTopBar';
import AppSideBar from './components/AppSideBar';
import AppContent from './components/AppContent';
// Style
import './App.css';

const GetRqeust = async (url) => {
  return await axios.get(baseURL);
};

const baseURL = "http://192.168.68.130:8899/validateToken";
async function App() {
const response = await GetRqeust(baseURL);
console.log(response.data);

  // axios.get(baseURL).then(
  //   (response) => {
  //     console.log(response.data)
      if (response.data.isValidToken) {
        const response_200 = (
          <div className="App">
              <Row>
                <Col>
                  <AppTopBar />
                </Col>
              </Row>
              <Row>
                <Col sm={2} className={["border-end"]} style={
                  {
                    height:"90vh",
                    backgroundColor: "＃7FFFD4"
                  }
                }>
                  <AppSideBar />
                </Col>
                <Col sm={8}>
                  <AppContent />
                </Col>
                <Col sm={2} className={["border-start"]}>
                  
                </Col>
              </Row>
          </div>
        );
        return response_200;
      } else {
        alert();
        window.location.href = "http://192.168.68.130:8899/"
      }
}

export default App;
