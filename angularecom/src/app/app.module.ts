import { ProductService } from './product.service';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { NavBarComponent } from './nav-bar/nav-bar.component';
import { MainContainerComponent } from './main-container/main-container.component';

@NgModule({
  declarations: [
    AppComponent,
    NavBarComponent,
    MainContainerComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [ProductService],
  bootstrap: [AppComponent]
})
export class AppModule { }
