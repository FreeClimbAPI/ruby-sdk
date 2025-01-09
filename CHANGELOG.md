# Ruby SDK Changelog

All notable changes to this project will be documented in this file.

The format of this changelog is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

None

<a name="5.0.0"></a>

## [5.0.0] - 2025-01-08

### Added
- Webhook classes
- More idiomated Enum management

### Changed
- Use upgraded openapi generator

### Removed
- *AllOf model files

<a name="4.9.0"></a>

## [4.9.0] - 2024-12-17

### Added

- Use latest spec updates
- mediaUrls are nullable
- Add SetDTMFPassThrough command

<a name="4.8.0"></a>

## [4.8.0] - 2024-10-08

### Added

- Add KnowledgeBase API to SDK

<a name="4.7.0"></a>

## [4.7.0] - 2024-09-12

### Added

- getNextPage functionality for paginated resources

<a name="4.6.2"></a>

## [4.6.2] - 2024-07-23

### Changed

- Regenerate SDK files

<a name="4.6.1"></a>

## [4.6.1] - 2024-07-24

### Changed

- Fix test file format and some value updates, also fix SDK file auto-generation issue

<a name="4.6.0"></a>

## [4.6.0] - 2024-07-19

### Changed

- GetDigit initialTimeoutMS property type change from string to integer

### Removed

- Removal of deprecated percl fields

<a name="4.5.2"></a>

## [4.5.2] - 2024-04-09

### Added

- Fix for Signature Information class method bug

<a name="4.5.1"></a>

## [4.5.1] - 2023-09-01

### Added

- TranscribeUtterance into a PerCL command
- MIT License

<a name="4.5.0"></a>

## [4.5.0] - 2023-08-15

### Added

- Transcribe Utterance Feature

<a name="4.4.4"></a>

## [4.4.4] - 2023-08-24

### Changed

- Remove implementation of 'x-max-length' vendor extension for unit testing

### Added

- Unit testing for properties with 'maxLength'

<a name="4.4.3"></a>

## [4.4.3] - 2023-08-15

### Changed

- `valid?` method implementation now utilizes `list_invalid_properties`
- Testing for `valid?` method

<a name="4.4.2"></a>

## [4.4.2] - 2023-07-26

### Changed

- Changed AddToConference CallId property type from boolean to string

<a name="4.4.1"></a>

## [4.4.1] - 2023-07-19

### Added

- Unit testing for Ruby SDK

## [4.4.0] - 2023-06-08

### Added

- Number management feature for ruby sdk including methods, properties, and testing

<a name="4.3.0"></a>

## [4.3.0] - 2023-04-27

### Changed

- Introduce application ID filtering for list calls method

<a name="4.2.0"></a>

## [4.2.0] - 2023-04-03

### Added

- Introduce signing secret verification class (RequestVerifier) - https://docs.freeclimb.com/docs/validating-requests-from-freeclimb#how-to-verify-requests-manually

<a name="4.1.4"></a>

## [4.1.4] - 2023-03-31

### Changed

- PerclScript.to_json serialization fixed

<a name="4.1.3"></a>

## [4.1.3] - 2023-03-13

### Changed

- callStatus variable of CallResult is now processing and returning correct data back

<a name="4.1.2"></a>

## [4.1.2] - 2023-02-21

### Changed

- OutDial PerCL command callingNumber and destination types fixed

<a name="4.1.1"></a>

## [4.1.1] - 2023-02-14

### Changed

- Application Request model allows for null values

<a name="4.1.0"></a>

## [4.1.0] - 2023-01-06

### Changed

- Enums have been implemented in the ruby sdk
- Updated README for enum implementation and testing

<a name="4.0.4"></a>

## [4.0.4] - 2022-12-01

### Changed

- Changed `QueueResult` property `current_size` from string to int
- Renamed `QueueResult` property `average_wait_time` to `average_queue_removal_time`

<a name="4.0.3"></a>

## [4.0.3] - 2022-11-01

### Added

- Add `offnet` property in IncomingNumber resource
- Add `offnet` query parameter for listIncomingNumbers

<a name="4.0.2"></a>

## [4.0.2] - 2022-10-07

### Added

- Add `playBeep` enum to `update_conference_request`

<a name="4.0.1"></a>

## [4.0.1] - 2022-07-20

### Added

- Add `Park` PerCL command
- Add `Unpark` PerCL command

### Changed

- Default loop value for Say command is set to `1`

<a name="4.0.0"></a>

## [4.0.0] - 2022-03-03

### Changed

- Prefer keyword argument initialization for all models
- Rename api->list_an_application to list->list_applications
- Use new openapi-generator version (5.4.0)
- Remove floating `Freeclimb::percl_to_json` and added it to `PerclScript` as `to_json` method

<a name="3.0.3"></a>

## [3.0.3] - 2022-02-08

### Added

- Add capabilities query functionality for searching AvailableNumbers and IncomingNumbers
- Enable unit testing

<a name="3.0.2"></a>

## [3.0.2] - 2021-12-06

### Changed

-remove alias from accepted query parameters when listing AvailablePhoneNumbers
-Add country, region, smsEnabled, and voiceEnabled as accepted query parameters for AvailablePhoneNumbers
-Add smsEnabled to AvailablePhoneNumbers response schema
-Add applicationId, country, region, smsEnabled, voiceEnabled, and hasApplication as accepted query parameters for IncomingPhoneNumber.

<a name="3.0.1"></a>

## [3.0.1] - 2021-11-02

### Added

- Add `active` property to CallResult

### Changed

- Small instances of `token` to `key`
- Call ID is not required to `AddToConference`

<a name="3.0.0"></a>

## [3.0.0] - 2021-05-03

### Added

- Add `verify_request` utility function

<a name="2.2.0"></a>

## [2.2.0] - 2021-04-12

### Changed

- Replace any language instance of `auth_token` or similar speech to `api_key`

<a name="2.1.2"></a>

## [2.1.2] - 2021-03-10

### Added

- Add `callConnectUrl` option to MakeACall Request

<a name="2.1.1"></a>

## [2.1.1] - 2020-12-16

### Added

- Add `privacyMode` option to RecordUtterance PerCL command

<a name="2.1.0"></a>

## [2.1.0] - 2020-12-16

### Added

- Add `Reject` PerCL command
- Add `Hangup` PerCL command

### Fixed

- Updated description and requirement of `action_url` attribute of `Redirect` PerCL command

<a name="2.0.3"></a>

## [2.0.3] - 2020-12-16

### Added

- Additional message statuses for TFN functionality

<a name="2.0.2"></a>

## [2.0.2] - 2020-08-13

### Added

- Add `privacyMode` option

<a name="1.2.1"></a>

## [1.2.1] - 2020-10-14

### Changed

- Rename `setPersyUrl` to `setUrl`

### Fixed

- Properly handle empty response bodies
- Other Minor bug fixes

<a name="1.2"></a>

## [1.2] - 2019-10-16

### Changed

- Persephony is now FreeClimb
- Code cleanup
- Documentation Updates
- Test Update

### Fixed

- Update common response handler to not use bodu twice

<a name="1.1.1"></a>

## [1.1.1] - 2019-06-27

### Changed

- Minor updates to docs and code cleanup

<a name="1.1.0"></a>

## [1.1.0] - 2019-06-07

### Pull Requests

- Merge pull request [#22](https://gitlab.vailsys.com/vail-cloud-services/fc-boilerplates/javascript-sdk/issues/22) from PersephonyAPI/maintenance

<a name="1.0.0"></a>

## [1.0.0] - 2019-06-04

### Changed

- Change default api target

<a name="0.1.0"></a>

## [0.1.0] - 2019-05-30

### Added

- `PlayEarlyMedia` PerCL Command

<a name="0.0.2"></a>

## [0.0.2] - 2018-11-29

### Remove

- Remove `callConnectUrl` and `statusCallbackUrl` from api.calls#create

<a name="0.0.1"></a>

## [0.0.1] - 2018-11-13

### Added

- PerCL Support
- FreeClimb API Support
- README, LICENSE
- docs

### Changed

- Initial Release

[unreleased]: https://github.com/FreeClimbAPI/ruby-sdk/compare/v1.0.1...HEAD
