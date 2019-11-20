import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { TabsetComponent, TabDirective } from 'ngx-bootstrap/tabs';
import { ServiceShared } from './services/services.module'

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  public subscriptions: Subscription[] = [];
  public versionData: any = [];
  public displayedVersions: any = [];

  constructor(
    private sharedService: ServiceShared
  ) { }

  public ngOnInit(): void {
    this.getTableContent('PDI')
  }

  public getSliceVersions(items) {
    return items.slice(0, 10);
  }

  public getTableContent(param) {
    console.log(param)
    const sub: Subscription = this.sharedService.getVersionCall(param)
      .subscribe((response: any) => {
        if (response) {
          this.versionData = response.OutputData;
        }
        this.displayedVersions = this.getSliceVersions(this.versionData);
      }, (error) => {
        this.versionData = []
          console.log(error)
      })
  }

  pageChanged(event): void {
    const startItem = (event.page - 1) * event.itemsPerPage;
    const endItem = event.page * event.itemsPerPage;
    this.displayedVersions = this.versionData.slice(startItem, endItem);
  }
}

