import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { ProductParam } from '../entity/Product';
import { HttpBaseService } from './http-base.service';

@Injectable({
  providedIn: 'root',
})
export class ProductService {
  Url=environment.urlServer
  getHeader(): HttpHeaders {
    var headers = { 'Content-Type': 'application/json' };
    if (localStorage) {
      var authorization = localStorage.getItem('Authorization');
      if (authorization) {
        headers['Authorization'] = authorization;
      }
    }
    return new HttpHeaders(headers);
  }
  constructor(private http: HttpBaseService, private httpClient : HttpClient) {}
  getProducts(params): Observable<any> {
    return this.http.get<any>(`${this.Url}/product`, params);
  }

  getProductSearch(productParam): Observable<any> {
    let query = {}
    if (productParam.pageIndex) query['pageIndex'] = productParam.pageIndex
    if (productParam.pageSize) query['pageSize'] = productParam.pageSize
    if (productParam.sortField) query['sortField'] = productParam.sortField
    if (productParam.sortOrder) query['sortOrder'] = productParam.sortOrder
    if (productParam.productName) query['productName'] = productParam.productName
    let params = new HttpParams({ fromObject: query });
    var httpOptions: Object = {
    };
    httpOptions["params"] = params;
    return this.httpClient.get<any>(`http://localhost:8081/api/product/search`, httpOptions);
  }
  getProduct(id): Observable<any> {
    return this.http.get<any>(`${this.Url}/product/` + id, null);
  }
}
