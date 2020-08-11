@if exist .\package.json do (
    @echo Installing development packages
    call npm install --save @angular/animations@latest @angular/cli@latest @angular/common@latest @angular/compiler@latest @angular/compiler-cli@latest @angular/core@latest @angular-devkit/build-angular@latest @angular-devkit/build-optimizer@latest @angular-devkit/build-webpack@latest @angular-devkit/core@latest @angular-devkit/architect@latest @angular-devkit/schematics@latest @angular/forms@latest @angular/localize@latest @angular/platform-browser@latest @angular/platform-browser-dynamic@latest @angular/platform-server@latest @angular/router@latest @ng-bootstrap/ng-bootstrap@latest @ng-select/ng-select@latest @ngtools/webpack@latest @popperjs/core@latest @schematics/angular@latest @schematics/update@latest @ag-grid-community/all-modules@latest ajax@latest aspnet-prerendering@latest bootstrap@latest chrome-trace-event@latest classlist.js@latest core-js@^3 font-awesome@latest fontawesome@latest help@latest inquirer@latest intl-tel-input@latest jquery@latest less@latest less-loader@latest ngx-toaster@latest ngx-toastr@latest oidc-client@latest rxjs@latest tslib@latest tslint@latest tsutils@latest webpack@latest zone.js@latest 
    call npm prune
    call npm audit fix
    call npm outdated
) else @echo "package.json does not exist"
