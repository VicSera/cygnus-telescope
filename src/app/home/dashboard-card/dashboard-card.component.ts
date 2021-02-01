import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'cgn-dashboard-card',
  templateUrl: './dashboard-card.component.html',
  styleUrls: ['./dashboard-card.component.css']
})
export class DashboardCardComponent implements OnInit {
  @Input() title: string;
  @Input() icon: string;
  @Input() link: string;

  constructor() { }

  ngOnInit(): void {
  }

}
