-- @param issueType: string - The Jira issue type
-- @param status: string - The current status of the issue
-- @param labels: table - Array of Jira labels
-- @return string - The standardized type
function getStandardType(issueType, status, labels)
    for i, label in ipairs(labels) do
        if issueType == "Bug" and label == "p0" then
            return "INCIDENT"
        end
    end

    -- Fall back to previous logic
    if issueType == "Epic" then
        return "REQUIREMENT"
    elseif issueType == "Story" then
        return "REQUIREMENT"
    elseif issueType == "Bug" then
        return "BUG"
    end

    return string.upper(issueType)
end