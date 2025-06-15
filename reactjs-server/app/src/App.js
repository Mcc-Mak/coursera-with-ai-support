// Script
import React, {useState, useEffect} from 'react';
import axios from "axios";
import {
  Row,
  Col
} from 'react-bootstrap';
import AppTopBar from './components/AppTopBar';
import AppSideBar from './components/AppSideBar';
import AppContent from './components/AppContent';
// Style
import './App.css';

const client = axios.create();
class App extends React.Component {
    state = {
        isValidToken: null
    }
    constructor () {
        super();
        client.get("http://192.168.68.130:8899/validateToken")
            .then(response => {
                this.setState({isValidToken: response.data.isValidToken});
            });
    }

    render () {
        if (this.state.isValidToken === null) {
            return (
                <div style={{width:"100vw",height:"100vh"}}
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
            <div className="App">
                <Row>
                    <Col>
                        <AppTopBar />
                    </Col>
                </Row>
                <Row>
                    <Col sm={2} className="border-end" style={{ height: "90vh", backgroundColor: "#7FFFD4" }}>
                        <AppSideBar />
                    </Col>
                    <Col sm={8}>
                        <AppContent />
                    </Col>
                    <Col sm={2} className="border-start"></Col>
                </Row>
            </div>
        );
    }
}

export default App;
