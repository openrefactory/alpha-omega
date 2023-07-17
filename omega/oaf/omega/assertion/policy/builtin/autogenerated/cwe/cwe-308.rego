package openssf.omega.policy.autogenerated.cwe.cwe_308

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_308
# title: "CWE-308: Use of Single-factor Authentication"
# methodology: >
#   The use of single-factor authentication can lead to unnecessary risk of compromise when compared with the benefits of a dual-factor authentication scheme.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-308" in assertion.predicate.content.tags
    }
}