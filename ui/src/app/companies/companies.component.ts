import { Component, OnInit } from '@angular/core';
import { Apollo, QueryRef } from 'apollo-angular';
import gql from 'graphql-tag';

const COMPANIES_QUERY = gql`
  query companies {
    companies {
      id
      name
      subdomain
      employeesNumber
      location
    }
  }
`;

@Component({
  selector: 'app-companies',
  templateUrl: './companies.component.html',
  styleUrls: ['./companies.component.css']
})
export class CompaniesComponent implements OnInit {

  page = 1;
  companies: any[] = [];
  private query: QueryRef<any>;

  constructor(private apollo: Apollo) { }

  ngOnInit() {
    this.query = this.apollo.watchQuery({
      query: COMPANIES_QUERY,
      variables: { }
    });

    this.query.valueChanges.subscribe(result => {
      this.companies = result.data && result.data.companies;
    });
  }
  update() {
    this.query.refetch({ offset: 10 * this.page });
  }

  nextPage() {
    this.page++;
    this.update();
  }

  prevPage() {
    if (this.page > 0) this.page--;
    this.update();
  }
}
