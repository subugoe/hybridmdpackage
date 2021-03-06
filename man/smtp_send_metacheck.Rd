% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/email.R
\name{smtp_send_metacheck}
\alias{smtp_send_metacheck}
\title{Send out email}
\usage{
smtp_send_metacheck(
  email,
  to,
  from = "metacheck-support@sub.uni-goettingen.de",
  subject = "OA-Metadaten-Schnelltest: Ihr Ergebnis",
  cc = from,
  credentials = creds_metacheck(),
  verbose = FALSE
)
}
\arguments{
\item{email}{The email message object, as created by the \code{\link[blastula:compose_email]{compose_email()}}
function. The object's class is \code{email_message}.}

\item{to}{A vector of email addresses serving as primary recipients for the
message. For secondary recipients, use the \code{cc} and \code{bcc} arguments. A
named character vector can be used to specify the recipient names along
with the their email address (e.g., \code{c("Jane Doe" = "jane_doe@example.com")}).}

\item{from}{The email address of the sender. Often this needs to be the same
email address that is associated with the account actually sending the
message. As with \code{to}, \code{cc}, and \code{bcc}, we can either supply a single email
address or use a named character vector with the sender name and email
address (e.g., \code{c("John Doe" = "john_doe@example.com")}).}

\item{subject}{The subject of the message, which is usually a brief summary
of the topic of the message. If not provided, an empty string will be used
(which is handled differently by email clients).}

\item{cc}{A vector of email addresses for sending the message as a carbon
copy or blind carbon copy. The CC list pertains to recipients that are to
receive a copy of a message that is addressed primarily to others. The CC
listing of recipients is visible to all other recipients of the message.
The BCC list differs in that those recipients will be concealed from all
other recipients (including those on the BCC list). A named character
vector can be used to specify the recipient names along with the their
email address (e.g., \code{c("Joe Public" = "joe_public@example.com")}).}

\item{credentials}{One of three credential helper functions must be used
here: (1) \code{\link[blastula:credential_helpers]{creds()}}, (2) \code{\link[blastula:credential_helpers]{creds_key()}}, or (3) \code{\link[blastula:credential_helpers]{creds_file()}}. The first,
\code{\link[blastula:credential_helpers]{creds()}}, allows for a manual specification of SMTP configuration and
credentials within that helper function. This is the most secure method for
supplying credentials as they aren't written to disk. The \code{\link[blastula:credential_helpers]{creds_key()}}
function is used if credentials are stored in the system-wide key-value
store, through use of the \code{\link[blastula:create_smtp_creds_key]{create_smtp_creds_key()}} function. The
\code{\link[blastula:credential_helpers]{creds_file()}} helper function relies on a credentials file stored on disk.
Such a file is created using the \code{\link[blastula:create_smtp_creds_file]{create_smtp_creds_file()}} function.}

\item{verbose}{Should verbose output from the internal curl \code{send_mail()}
call be printed? While the username and password will likely be echoed
during the exchange, such information is encoded and won't be stored on
the user's system.}

\item{...}{
  Arguments passed on to \code{\link[blastula:smtp_send]{blastula::smtp_send}}
  \describe{
    \item{\code{bcc}}{A vector of email addresses for sending the message as a carbon
copy or blind carbon copy. The CC list pertains to recipients that are to
receive a copy of a message that is addressed primarily to others. The CC
listing of recipients is visible to all other recipients of the message.
The BCC list differs in that those recipients will be concealed from all
other recipients (including those on the BCC list). A named character
vector can be used to specify the recipient names along with the their
email address (e.g., \code{c("Joe Public" = "joe_public@example.com")}).}
    \item{\code{creds_file}}{An option to specify a credentials file. As this argument
is deprecated, please consider using \verb{credentials = creds_file(<file>)}
instead.}
  }}
}
\description{
Send out email
}
\seealso{
Other communicate: 
\code{\link{emailReport}()},
\code{\link{render_email}()},
\code{\link{runMetacheck}()}
}
\concept{communicate}
\keyword{internal}
