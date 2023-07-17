package openssf.omega.policy.autogenerated.cwe.cwe_915

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_915
# title: "CWE-915: Improperly Controlled Modification of Dynamically-Determined Object Attributes"
# methodology: >
#   The product receives input from an upstream component that specifies multiple attributes, properties, or fields that are to be initialized or updated in an object, but it does not properly control which attributes can be modified.
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
        not "cwe-915" in assertion.predicate.content.tags
    }
}