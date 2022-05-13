import demo  from './demo'
let module={
    install(vue,weex){

        weex.registerModule('demo',demo)
    }
}
export  default module
