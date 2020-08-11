@if exist .\package.json do (
    @echo Installing development packages
    call npm install --save-dev @angular-devkit/build-angular@latest @angular/cli@latest @angular/compiler-cli@latest @angular/language-service@latest @types/jasmine@latest @types/jasminewd2@latest @types/node@latest jasmine-core@latest jasmine-spec-reporter@latest karma@latest karma-chrome-launcher@latest karma-coverage-istanbul-reporter@latest karma-jasmine@latest karma-jasmine-html-reporter@latest typescript
    call npm prune
    call npm audit fix
    call npm outdated
) else @echo "package.json does not exist"
