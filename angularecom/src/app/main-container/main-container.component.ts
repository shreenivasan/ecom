import { ProductService } from './../product.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-main-container',
  templateUrl: './main-container.component.html',
  styleUrls: ['./main-container.component.css']
})
export class MainContainerComponent implements OnInit {
  products=[];
  constructor(private ProductService:ProductService) { }

  ngOnInit() {
  this.products=this.ProductService.getProduct();
  }

}
