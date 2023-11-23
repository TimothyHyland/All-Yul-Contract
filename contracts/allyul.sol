object "allyul" {
    code {
        // this is the constructor
        datacopy(0,dataoffset("runtime"), datasize("runtime"))
        return (0, datasize("runtime"))
    }
    object "runtime" {
        code {
                switch getSelector()
                case 0x5f22e626   /* yulfunction */ {
                        mstore(0, 4)
                        return(0, 0x20)
                }
                default {
                    revert(0, 0)
                }


                /* getSelector function code */ 
                function getSelector() -> selector {
                        selector := div(calldataload(0), 0x100000000000000000000000000000000000000000000000000000000)
                }
        
    }
    }
}