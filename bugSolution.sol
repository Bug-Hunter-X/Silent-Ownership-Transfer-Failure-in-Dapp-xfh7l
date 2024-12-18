function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(owner(), newOwner);
  owner_ = newOwner;
  //This line adds a revert statement for an invalid address and fixes the bug
  require(owner_ != address(0), "Ownable: transfer failed");
}