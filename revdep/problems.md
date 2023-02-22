# flashr

<details>

* Version: 0.1.0
* GitHub: https://github.com/JeffreyRStevens/flashr
* Source code: https://github.com/cran/flashr
* Date/Publication: 2022-11-22 08:50:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "flashr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in `gh_process_response(raw)`: GitHub API error (403): API rate limit exceeded for 50.16.143.239. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)
      i Read more at <https://docs.github.com/rest/overview/resources-in-the-rest-api#rate-limiting>
      Backtrace:
          ▆
       1. └─flashr (local) `<fn>`(repo_text = repo_text)
       2.   ├─base::vapply(gh::gh(repo_text), "[[", "", "name")
       3.   └─gh::gh(repo_text)
       4.     └─gh:::gh_process_response(raw)
       5.       └─gh:::gh_error(response)
       6.         └─cli::cli_abort(...)
       7.           └─rlang::abort(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

# portalr

<details>

* Version: 0.3.11
* GitHub: https://github.com/weecology/portalr
* Source code: https://github.com/cran/portalr
* Date/Publication: 2022-12-01 17:40:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::cloud_details(, "portalr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
          ▆
       1. ├─portalr::bait_presence_absence(path = portal_data_path, level = "plot") at test-10-summarize_ants.R:49:2
       2. │ ├─compute_presence(bait, level) %>% as.data.frame()
       3. │ └─portalr:::compute_presence(bait, level)
       4. │   └─... %>% ...
       5. ├─base::as.data.frame(.)
       6. ├─tidyr::complete(., !!!grouping, fill = list(presence = 0))
       7. ├─dplyr::mutate(., presence = 1)
       8. ├─dplyr::distinct(.)
       9. └─dplyr::select(., !!!grouping)
      
      [ FAIL 12 | WARN 43 | SKIP 42 | PASS 17 ]
      Error: Test failures
      Execution halted
    ```

