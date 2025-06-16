import React from 'react';
import {
    Row,
    Col,
    Form,
    ListGroup,
    Button
} from 'react-bootstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faWandSparkles,
  faBriefcase,
  faUserTie,
  faBullhorn,
  faGear,
  faArrowRight
} from '@fortawesome/free-solid-svg-icons';

class AppContent extends React.Component {
    iconStyle = {
        cursor:"pointer",
        width:"80px",
        // borderRadiu:"40px"
    };
    handleOnMouseOver = (e) => {
        e.target.classList.add("active");
    };
    handleOnMouseOut = (e) => {
        e.target.classList.remove("active");
    };
    constructor () {
        super();
    }
    render () {
        return (
            <div>
                <Form className="d-flex flex-column justify-content-center">
                    <h6>What course will you box?</h6>
                    <div className="d-flex justify-content-center">
                        <Form.Control type="text" name="searchCourse"
                            placeholder="&#128269; Search your courses or templates"
                            className={["w-75"]}
                            style={{textIndent:"25%",textWrap:"pretty"}}/>
                    </div>
                    <div className="d-flex justify-content-center">
                        <ListGroup key="sm" horizontal="sm" className="my-2">
                            {
                                [
                                    ["AI", <FontAwesomeIcon icon={faWandSparkles} />],
                                    ["Business", <FontAwesomeIcon icon={faBriefcase} />],
                                    ["HR", <FontAwesomeIcon icon={faUserTie} />],
                                    ["Marketing", <FontAwesomeIcon icon={faBullhorn} />],
                                ].map(
                                    (e,i) => {
                                        return (
                                            <ListGroup.Item variant="light" 
                                                key={i}
                                                style={this.iconStyle}
                                                onMouseOver={this.handleOnMouseOver}
                                                onMouseOut={this.handleOnMouseOut}>
                                                {e[1]}
                                                <br/>
                                                <span style={{fontSize:8}}>{e[0]}</span>
                                            </ListGroup.Item>
                                        );
                                    }
                                )
                            }
                        </ListGroup>
                    </div>
                    <div className="d-flex justify-content-center">
                        <Form.Select className={["w-75"]}
                                aria-label="Default select example">
                            {
                                [
                                    "Open this select menu",
                                    "English United States",
                                    "Two",
                                    "Three",
                                ].map((e,i)=>{
                                    return (
                                        <option value={i} key={i}>{e}</option>
                                    );
                                })
                            }
                        </Form.Select>
                    </div>
                    <div className="d-flex justify-content-center">
                        {
                            [
                                "1",
                                "2",
                                "3",
                            ].map(e=>{
                                return (
                                    <div key={"default-radio-"+e} className="m-2">
                                        <Form.Check type="radio" id={"radio-"+e} label={"Step "+e} />
                                    </div>
                                );
                            })
                        }
                    </div>
                    <div className="d-flex justify-content-center pb-2">
                        <Row className="w-75">
                            <Col sm={9} className="d-flex justify-content-start p-0">
                                Describe your course
                            </Col>
                            <Col sm={3} className="d-flex justify-content-end p-0">
                                <FontAwesomeIcon icon={faGear} />
                            </Col>
                        </Row>
                    </div>
                    <div className="d-flex justify-content-center pb-2">
                        <Form.Control as="textarea" name="AI-Bot"
                            placeholder="AI Bot"
                            className={["w-75"]} />
                    </div>
                    <div className="d-flex justify-content-center">
                        <div className="d-flex justify-content-start w-75">
                            <Col sm={9} className="d-flex justify-content-start p-0">
                                <Button style={{width:120,backgroundColor:"#c98acc"}}>
                                    <span>Next&nbsp;&nbsp;</span>
                                    <FontAwesomeIcon icon={faArrowRight} />
                                </Button>
                            </Col>
                            <Col sm={3} className="d-flex justify-content-end p-0">
                                <a href="" style={{color:"#c98acc"}}
                                    className={["d-flex align-items-center"]}>
                                    <span>Skip&nbsp;&gt;</span>
                                </a>
                            </Col>
                        </div>
                    </div>
                </Form>
            </div>
        );
    }
}

export default AppContent;