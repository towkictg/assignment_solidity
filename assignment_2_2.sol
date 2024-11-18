
pragma solidity >= 0.8.7;

// SPDX-License-Identifier: MIT

contract assignmentTwo {

    uint public studentNumber;
    address public student;
    uint public gasUsed;  // Variable to store the gas used by setStudentNumber function

    constructor() {
        student = msg.sender;
        setStudentNumber(40268283);
    }

    // Function to set student number and track gas usage
    function setStudentNumber(uint _studentNumber) public {
        uint startGas = gasleft();  // Record the gas available at the start of the function
        
        studentNumber = _studentNumber;  // Update the student number
        
        uint endGas = gasleft();  // Record the gas available after the function execution
        
        uint gasConsumed = startGas - endGas;  // The gas used is the difference between the start and end gas

        // Call setGasUsed function and pass the calculated gas used
        setGasUsed(gasConsumed);
    }

    // Function to store the gas used
    function setGasUsed(uint _gasUsed) public {
        gasUsed = _gasUsed;
    }
}
