# Authentication Log Analyzer

# Description
-----------

This script analyzes the authentication logs stored on the server and identifies any entries that indicate suspicious login attempts based on specified keywords.

# Features
--------

-   Searches the authentication log for predefined suspicious activity keywords.

-   Logs the identified suspicious entries into a new file named `suspicious_activity.log` for further investigation.

# Keywords 
-------------

The script searches for the following keywords:

-   `Disconnected from`

-   `Unauthorized access`

-   `Could not load host key`

-   `Failed password`

-   `Authentication failure`

-   `Unauthorized access attempt`
