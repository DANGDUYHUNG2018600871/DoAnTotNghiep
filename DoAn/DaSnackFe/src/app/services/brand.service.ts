import { HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { HttpBaseService } from './http-base.service';

@Injectable({
  providedIn: 'root',
})
export class BrandService {
  Url=environment.urlServer
  constructor(private http: HttpBaseService) {}
  getBrands(params: any): Observable<any> {
    return this.http.get<any>(`${this.Url}/brand`, params);
  }
  getAllBrand(): Observable<any> {
    return this.http.get<any>(`${this.Url}/brand/all`, null);
  }
 
}
