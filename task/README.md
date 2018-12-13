# Cake Task Action

Runs a Cake task defined in a `build.cake` in the root of the repository.
The file containing your Cake tasks can be overridden via environment variables.

## Success Criteria

This action succeeds if the `Cake` task completes without error.

## Usage

```hcl
action "cake test" {
    # Replace <latest tag> with the latest tag from
    # https://github.com/gep13/cake-actions/releases
    uses = "gep13/cake-actions/task@<latest tag>"

    # If you need to change the default build.cake name specify here.
    # See Environment Variables below for details.
    env = {
        CAKE_SCRIPT = "./build.cake"
    }

    # The Cake task to execute
    args = ["Test"]
}
```

## Environment Variables

| Name            | Default               | Description                         |
|-----------------|-----------------------|-------------------------------------|
| CAKE_SCRIPT     | "./build.cake"        | The default Cake Script to execute  |

## Arguments

Arguments to the `Task` action determine what `Cake` task to execute.

Execute the `test` Cake task.

```hcl
action "cake test" {
    ...
    args = ["Test"]
}
```
