import React, { useState } from 'react';
import { CButton, CCollapse, CCard, CCardBody } from '@coreui/react';
// npm install @coreui/react
import Dialogue from './AI_Assistant'; // Ensure this path is correct
import "./CSS/Chatbot.css"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faRobot } from '@fortawesome/free-solid-svg-icons';

function Chatbot() {
  const [visible, setVisible] = useState(false);

  return (
    <>
    
    
    <div className="button-container">
    <CCollapse visible={visible}>
      <CCard className="small-card mt-3">
        <CCardBody>
          <Dialogue />
        </CCardBody>
      </CCard>
    </CCollapse>
      <CButton
        color="primary"
        className="custom-button" // Apply custom class
        onClick={(event) => {
          event.preventDefault();
          setVisible(!visible);
        }}
      >
       <FontAwesomeIcon icon={faRobot} />
      </CButton>
    </div>
  </>
  );
}

export default Chatbot;