pragma solidity ^0.5.16;

// Inheritance
import "../libs/Owned.sol";

// Internal references
import "./Proxyable.sol";
contract Proxy is Owned {
    Proxyable public target;

    event TargetUpdated(Proxyable newTarget);

    modifier onlyTarget {
        require(Proxyable(msg.sender) == target, "Must be proxy target");
        _;
    }

    constructor(address _owner) public Owned(_owner) {}

    function setTarget(Proxyable _target) external onlyOwner {
        target = _target;
        emit TargetUpdated(target);
    }


}
