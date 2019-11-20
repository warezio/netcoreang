import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpEvent } from '@angular/common/http'

@Injectable({
  providedIn: 'root'
})

export class ServiceShared {

  public commonUrl: string = 'http://localhost:52476/api/version/getversiondetailsbyversiontype';
  constructor(
    private http: HttpClient
  ) { }

  public getVersionCall(reqParam: string): Observable<any> { 
    return this.http.get(this.commonUrl, {
      params: {
        versionTypeCode: reqParam
      }
    })
  }
}
