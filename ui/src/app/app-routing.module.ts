import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


import { CompaniesComponent } from './companies/companies.component';
import { HomeComponent } from './home/home.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'companies',
    component: CompaniesComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
