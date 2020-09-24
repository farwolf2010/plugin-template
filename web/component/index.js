import demo  from './demo'
let component={
    install(vue,weex){
        weex.registerComponent('demo',demo)
    }
}
module.exports=component
