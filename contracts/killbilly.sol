pragma solidity 0.5.7;

contract KillBilly {
	bool public is_killable;
	mapping (address => bool) public approved_killers;

	constructor() public {
		is_killable = false;
	}

	function killerize(address addr) public {
		approved_killers[addr] = true;
	}

	function activatekillability() public {
		require(approved_killers[msg.sender] == true);
		is_killable = true;
	}

	function commencekilling() public {
	    require(is_killable);
	 	selfdestruct(msg.sender);
	}

	function echidna_test_killabel() public returns (bool) {
		activatekillability();
		return (is_killable == true);
	}
	 function echidna_test_true() public view returns (bool) {
        return true;
    }

    function echidna_test_false() public view returns (bool) {
        return false;
    }
}