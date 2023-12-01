#[contract]
mod WoyStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Woy(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Woy(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
