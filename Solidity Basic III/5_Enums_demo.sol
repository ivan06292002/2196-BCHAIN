// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Enum {

    // Enum representing shipping status	
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing enum value into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    function accept() public {
        status = Status.Accepted;
    }

    // Delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
     // Check if the current status is Accepted
    function isAccepted() public view returns (bool) {
        return status == Status.Accepted;
    }

    // Check if the current status is Canceled
    function isCanceled() public view returns (bool) {
        return status == Status.Canceled;
    }
}
