# npm-get-version-action

This GitHub Action retrieves the package version from the package.json file and sets the version in step output values usable in your workflow file.

## Example

To use this action in your project, use the following:

```yaml
- name: get-npm-version
  id: package-version
  uses: martinbeentjes/npm-get-version-action@v1.3.1
```

The Action sets output variables called
* `full`
* `minor` and
* `major`

which can be used in a following step by using `${{ steps.package-version.outputs.full}}`.

If you are using a monorepo or otherwise have some packages in a subdirectory of your repo, add the path to the `package.json` as a parameter:

```yaml
- name: get-npm-version
  id: package-version
  uses: martinbeentjes/npm-get-version-action@v1.3.1
  with:
    path: packages/<yourpackage>
```
