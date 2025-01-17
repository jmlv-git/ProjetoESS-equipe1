import { Usuario } from "../models/usuario";

export class UsuarioController {
    
    usuarios:Usuario[];
    
    constructor() {
        this.usuarios=[];
    }

    getUsuarios():Usuario[] {
        return this.usuarios;
    }

    cadastrar(usuario: Usuario):boolean {
        if (this.emailJaCadastrado(usuario.email)||this.credencialJaCadastrado(usuario.credencial)) {
            return false;
        }else{
            this.usuarios.push(usuario);
            return true;
        }    
    }

    logar(email:string,senha: string):boolean {
        var permissao:boolean = false;
        for (let index = 0; index < this.usuarios.length; index++) {
            if (this.usuarios[index].email == email && this.usuarios[index].senha == senha) {
                permissao = true;
                return permissao;
            }   
        }
        return permissao;
    }

    emailJaCadastrado(email: String):boolean {
        var achou:boolean=false;
        for (let index = 0; index < this.usuarios.length; index++) {
            if (this.usuarios[index].email == email) {
                achou=true;
                return achou;
            }     
        }
        return achou;
    }

    credencialJaCadastrado(credencial: String):boolean {
        var achou:boolean=false;
        for (let index = 0; index < this.usuarios.length; index++) {
            if (this.usuarios[index].credencial == credencial && credencial!="") {
                //OBS: todos os clintes vao ter credencial vazia.
                achou=true;
                return achou;
            } 
        }
        return achou;
    }
}