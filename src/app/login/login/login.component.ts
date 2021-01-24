import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'cgn-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  username: string;
  password: string;

  constructor() { }

  ngOnInit(): void {
  }

  logInSubmit(): void {
    console.log(this.username + ' ' + this.password);
  }
}
