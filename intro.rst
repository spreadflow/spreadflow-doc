Intro
=====

SpreadFlow is a metadata extraction and processing engine. Its main purpose is
to support file based media production workflows by observing changes to text
and media files in real-time.

Information gathered through this process can be used to transform and
recombine content, e.g., in order to prepare it for different publishing
channels.


Key Features
------------

* Robust and fast filesystem change monitor supporting multiple platforms via
  native APIs.
* Built-in support for Metadata extraction (via exiftool), XSLT transformations
  (via lxml), PDF manipulation (via pdfrw), Image conversion and face/feature
  recognition (via Thumbor and OpenCV)
* Built around a Dataflow engine which provides parallelisation out of the box
  and makes it easier to build reusable components.
* Based on Python and Twisted ➡ Batteries included.
