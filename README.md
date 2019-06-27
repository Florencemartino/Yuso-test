# README

Clone this repository on a local environment running Ruby.

This project is based on Ruby 2.6.3, so it is better to run with that version.
If you do not have this version, you may try to update the file `.ruby-version`. 

The project is based on SQlite, as a result you do not need to install any SQL server. There is no configuration needed.

# Part 1

### 1. Simple API

Write an API to list, show, create, update and delete drivers. Use the standard CRUD verbs for each action.

URLs should look like `/drivers` for collection routes and `/drivers/123` for member routes (e.g. with an ID of `123`).

| Action | Request body | Response body | Status code |
|---|---|---|---|
| Create | JSON object with attributes `first_name`, `last_name`, `phone_number` |  - | `201 Created` |
| Show | - | JSON object with attributes `id`, `first_name`, `last_name`, `phone_number`|  `200 OK` |
| Edit | JSON object with any of `first_name`, `last_name`, `phone_number` | Same as in "show" | `200 OK` |
| Delete | Fragment of JSON  | - | `204 No content`  |
| List | - | Array of drivers as JSON (as described in "show") | `200 OK` |

### 2. Add uniqueness check

We want to make sure that there is one driver per phone number. What changes would you make to handle this uniqueness constraint?
