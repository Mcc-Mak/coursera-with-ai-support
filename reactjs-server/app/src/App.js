// Script
import React from 'react';
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

function App() {
  return (
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
          <Col sm={2}>
            b
          </Col>
        </Row>
    </div>
  );
}

export default App;
