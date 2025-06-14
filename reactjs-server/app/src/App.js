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

function App() {
    const [isValidToken, setIsValidToken] = useState(null); // Track token validation status
    const baseURL = "http://192.168.68.130:8899/validateToken";

    useEffect(() => {
        const checkToken = async () => {
            const response = await axios.get(baseURL);
            setIsValidToken(response.data.isValidToken);
        };
        checkToken();
    }, []);

    if (isValidToken === null) {
        return (
            <Row>
                <Col>
                    <div>Loading...</div>
                </Col>
            </Row>
        );
    }

    if (!isValidToken) {
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

export default App;
