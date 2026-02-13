# List available options.

This function lists all available options for
[`config()`](https://httr.r-lib.org/reference/config.md). It provides
both the short R name which you use with httr, and the longer Curl name,
which is useful when searching the documentation. `curl_doc` opens a
link to the libcurl documentation for an option in your browser.

## Usage

``` r
httr_options(matches)

curl_docs(x)
```

## Arguments

- matches:

  If not missing, this restricts the output so that either the httr or
  curl option matches this regular expression.

- x:

  An option name (either short or full).

## Value

A data frame with three columns:

- httr:

  The short name used in httr

- libcurl:

  The full name used by libcurl

- type:

  The type of R object that the option accepts

## Details

RCurl and httr use slightly different names to libcurl: the initial
`CURLOPT_` is removed, all underscores are converted to periods and the
option is given in lower case. Thus "CURLOPT_SSLENGINE_DEFAULT" becomes
"sslengine.default".

## Examples

``` r
httr_options()
#>                           httr                            libcurl
#> 1         abstract_unix_socket       CURLOPT_ABSTRACT_UNIX_SOCKET
#> 2              accept_encoding            CURLOPT_ACCEPT_ENCODING
#> 3             accepttimeout_ms           CURLOPT_ACCEPTTIMEOUT_MS
#> 4                address_scope              CURLOPT_ADDRESS_SCOPE
#> 5                       altsvc                     CURLOPT_ALTSVC
#> 6                  altsvc_ctrl                CURLOPT_ALTSVC_CTRL
#> 7                       append                     CURLOPT_APPEND
#> 8                  autoreferer                CURLOPT_AUTOREFERER
#> 9                    aws_sigv4                  CURLOPT_AWS_SIGV4
#> 10                  buffersize                 CURLOPT_BUFFERSIZE
#> 11            ca_cache_timeout           CURLOPT_CA_CACHE_TIMEOUT
#> 12                      cainfo                     CURLOPT_CAINFO
#> 13                 cainfo_blob                CURLOPT_CAINFO_BLOB
#> 14                      capath                     CURLOPT_CAPATH
#> 15                    certinfo                   CURLOPT_CERTINFO
#> 16          chunk_bgn_function         CURLOPT_CHUNK_BGN_FUNCTION
#> 17                  chunk_data                 CURLOPT_CHUNK_DATA
#> 18          chunk_end_function         CURLOPT_CHUNK_END_FUNCTION
#> 19             closesocketdata            CURLOPT_CLOSESOCKETDATA
#> 20         closesocketfunction        CURLOPT_CLOSESOCKETFUNCTION
#> 21                connect_only               CURLOPT_CONNECT_ONLY
#> 22                  connect_to                 CURLOPT_CONNECT_TO
#> 23              connecttimeout             CURLOPT_CONNECTTIMEOUT
#> 24           connecttimeout_ms          CURLOPT_CONNECTTIMEOUT_MS
#> 25  conv_from_network_function CURLOPT_CONV_FROM_NETWORK_FUNCTION
#> 26     conv_from_utf8_function    CURLOPT_CONV_FROM_UTF8_FUNCTION
#> 27    conv_to_network_function   CURLOPT_CONV_TO_NETWORK_FUNCTION
#> 28                      cookie                     CURLOPT_COOKIE
#> 29                  cookiefile                 CURLOPT_COOKIEFILE
#> 30                   cookiejar                  CURLOPT_COOKIEJAR
#> 31                  cookielist                 CURLOPT_COOKIELIST
#> 32               cookiesession              CURLOPT_COOKIESESSION
#> 33              copypostfields             CURLOPT_COPYPOSTFIELDS
#> 34                        crlf                       CURLOPT_CRLF
#> 35                     crlfile                    CURLOPT_CRLFILE
#> 36                       curlu                      CURLOPT_CURLU
#> 37               customrequest              CURLOPT_CUSTOMREQUEST
#> 38                   debugdata                  CURLOPT_DEBUGDATA
#> 39               debugfunction              CURLOPT_DEBUGFUNCTION
#> 40            default_protocol           CURLOPT_DEFAULT_PROTOCOL
#> 41                 dirlistonly                CURLOPT_DIRLISTONLY
#> 42    disallow_username_in_url   CURLOPT_DISALLOW_USERNAME_IN_URL
#> 43           dns_cache_timeout          CURLOPT_DNS_CACHE_TIMEOUT
#> 44               dns_interface              CURLOPT_DNS_INTERFACE
#> 45               dns_local_ip4              CURLOPT_DNS_LOCAL_IP4
#> 46               dns_local_ip6              CURLOPT_DNS_LOCAL_IP6
#> 47                 dns_servers                CURLOPT_DNS_SERVERS
#> 48       dns_shuffle_addresses      CURLOPT_DNS_SHUFFLE_ADDRESSES
#> 49        dns_use_global_cache       CURLOPT_DNS_USE_GLOBAL_CACHE
#> 50          doh_ssl_verifyhost         CURLOPT_DOH_SSL_VERIFYHOST
#> 51          doh_ssl_verifypeer         CURLOPT_DOH_SSL_VERIFYPEER
#> 52        doh_ssl_verifystatus       CURLOPT_DOH_SSL_VERIFYSTATUS
#> 53                     doh_url                    CURLOPT_DOH_URL
#> 54                   egdsocket                  CURLOPT_EGDSOCKET
#> 55                 errorbuffer                CURLOPT_ERRORBUFFER
#> 56       expect_100_timeout_ms      CURLOPT_EXPECT_100_TIMEOUT_MS
#> 57                 failonerror                CURLOPT_FAILONERROR
#> 58                    filetime                   CURLOPT_FILETIME
#> 59                fnmatch_data               CURLOPT_FNMATCH_DATA
#> 60            fnmatch_function           CURLOPT_FNMATCH_FUNCTION
#> 61              followlocation             CURLOPT_FOLLOWLOCATION
#> 62                forbid_reuse               CURLOPT_FORBID_REUSE
#> 63               fresh_connect              CURLOPT_FRESH_CONNECT
#> 64                 ftp_account                CURLOPT_FTP_ACCOUNT
#> 65     ftp_alternative_to_user    CURLOPT_FTP_ALTERNATIVE_TO_USER
#> 66     ftp_create_missing_dirs    CURLOPT_FTP_CREATE_MISSING_DIRS
#> 67              ftp_filemethod             CURLOPT_FTP_FILEMETHOD
#> 68            ftp_skip_pasv_ip           CURLOPT_FTP_SKIP_PASV_IP
#> 69                 ftp_ssl_ccc                CURLOPT_FTP_SSL_CCC
#> 70                ftp_use_eprt               CURLOPT_FTP_USE_EPRT
#> 71                ftp_use_epsv               CURLOPT_FTP_USE_EPSV
#> 72                ftp_use_pret               CURLOPT_FTP_USE_PRET
#> 73                     ftpport                    CURLOPT_FTPPORT
#> 74                  ftpsslauth                 CURLOPT_FTPSSLAUTH
#> 75           gssapi_delegation          CURLOPT_GSSAPI_DELEGATION
#> 76   happy_eyeballs_timeout_ms  CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS
#> 77           haproxy_client_ip          CURLOPT_HAPROXY_CLIENT_IP
#> 78             haproxyprotocol            CURLOPT_HAPROXYPROTOCOL
#> 79                      header                     CURLOPT_HEADER
#> 80                  headerdata                 CURLOPT_HEADERDATA
#> 81              headerfunction             CURLOPT_HEADERFUNCTION
#> 82                   headeropt                  CURLOPT_HEADEROPT
#> 83                        hsts                       CURLOPT_HSTS
#> 84                   hsts_ctrl                  CURLOPT_HSTS_CTRL
#> 85                hstsreaddata               CURLOPT_HSTSREADDATA
#> 86            hstsreadfunction           CURLOPT_HSTSREADFUNCTION
#> 87               hstswritedata              CURLOPT_HSTSWRITEDATA
#> 88           hstswritefunction          CURLOPT_HSTSWRITEFUNCTION
#> 89              http09_allowed             CURLOPT_HTTP09_ALLOWED
#> 90              http200aliases             CURLOPT_HTTP200ALIASES
#> 91       http_content_decoding      CURLOPT_HTTP_CONTENT_DECODING
#> 92      http_transfer_decoding     CURLOPT_HTTP_TRANSFER_DECODING
#> 93                http_version               CURLOPT_HTTP_VERSION
#> 94                    httpauth                   CURLOPT_HTTPAUTH
#> 95                     httpget                    CURLOPT_HTTPGET
#> 96                  httpheader                 CURLOPT_HTTPHEADER
#> 97                    httppost                   CURLOPT_HTTPPOST
#> 98             httpproxytunnel            CURLOPT_HTTPPROXYTUNNEL
#> 99       ignore_content_length      CURLOPT_IGNORE_CONTENT_LENGTH
#> 100                 infilesize                 CURLOPT_INFILESIZE
#> 101           infilesize_large           CURLOPT_INFILESIZE_LARGE
#> 102                  interface                  CURLOPT_INTERFACE
#> 103             interleavedata             CURLOPT_INTERLEAVEDATA
#> 104         interleavefunction         CURLOPT_INTERLEAVEFUNCTION
#> 105                  ioctldata                  CURLOPT_IOCTLDATA
#> 106              ioctlfunction              CURLOPT_IOCTLFUNCTION
#> 107                  ipresolve                  CURLOPT_IPRESOLVE
#> 108                 issuercert                 CURLOPT_ISSUERCERT
#> 109            issuercert_blob            CURLOPT_ISSUERCERT_BLOB
#> 110      keep_sending_on_error      CURLOPT_KEEP_SENDING_ON_ERROR
#> 111                  keypasswd                  CURLOPT_KEYPASSWD
#> 112                   krblevel                   CURLOPT_KRBLEVEL
#> 113                  localport                  CURLOPT_LOCALPORT
#> 114             localportrange             CURLOPT_LOCALPORTRANGE
#> 115              login_options              CURLOPT_LOGIN_OPTIONS
#> 116            low_speed_limit            CURLOPT_LOW_SPEED_LIMIT
#> 117             low_speed_time             CURLOPT_LOW_SPEED_TIME
#> 118                  mail_auth                  CURLOPT_MAIL_AUTH
#> 119                  mail_from                  CURLOPT_MAIL_FROM
#> 120                  mail_rcpt                  CURLOPT_MAIL_RCPT
#> 121       mail_rcpt_allowfails       CURLOPT_MAIL_RCPT_ALLOWFAILS
#> 122       max_recv_speed_large       CURLOPT_MAX_RECV_SPEED_LARGE
#> 123       max_send_speed_large       CURLOPT_MAX_SEND_SPEED_LARGE
#> 124                maxage_conn                CURLOPT_MAXAGE_CONN
#> 125                maxconnects                CURLOPT_MAXCONNECTS
#> 126                maxfilesize                CURLOPT_MAXFILESIZE
#> 127          maxfilesize_large          CURLOPT_MAXFILESIZE_LARGE
#> 128           maxlifetime_conn           CURLOPT_MAXLIFETIME_CONN
#> 129                  maxredirs                  CURLOPT_MAXREDIRS
#> 130               mime_options               CURLOPT_MIME_OPTIONS
#> 131                   mimepost                   CURLOPT_MIMEPOST
#> 132                      netrc                      CURLOPT_NETRC
#> 133                 netrc_file                 CURLOPT_NETRC_FILE
#> 134        new_directory_perms        CURLOPT_NEW_DIRECTORY_PERMS
#> 135             new_file_perms             CURLOPT_NEW_FILE_PERMS
#> 136                     nobody                     CURLOPT_NOBODY
#> 137                 noprogress                 CURLOPT_NOPROGRESS
#> 138                    noproxy                    CURLOPT_NOPROXY
#> 139                   nosignal                   CURLOPT_NOSIGNAL
#> 140             opensocketdata             CURLOPT_OPENSOCKETDATA
#> 141         opensocketfunction         CURLOPT_OPENSOCKETFUNCTION
#> 142                   password                   CURLOPT_PASSWORD
#> 143                 path_as_is                 CURLOPT_PATH_AS_IS
#> 144            pinnedpublickey            CURLOPT_PINNEDPUBLICKEY
#> 145                   pipewait                   CURLOPT_PIPEWAIT
#> 146                       port                       CURLOPT_PORT
#> 147                       post                       CURLOPT_POST
#> 148                 postfields                 CURLOPT_POSTFIELDS
#> 149              postfieldsize              CURLOPT_POSTFIELDSIZE
#> 150        postfieldsize_large        CURLOPT_POSTFIELDSIZE_LARGE
#> 151                  postquote                  CURLOPT_POSTQUOTE
#> 152                  postredir                  CURLOPT_POSTREDIR
#> 153                  pre_proxy                  CURLOPT_PRE_PROXY
#> 154                   prequote                   CURLOPT_PREQUOTE
#> 155                 prereqdata                 CURLOPT_PREREQDATA
#> 156             prereqfunction             CURLOPT_PREREQFUNCTION
#> 157                    private                    CURLOPT_PRIVATE
#> 158           progressfunction           CURLOPT_PROGRESSFUNCTION
#> 159                  protocols                  CURLOPT_PROTOCOLS
#> 160              protocols_str              CURLOPT_PROTOCOLS_STR
#> 161                      proxy                      CURLOPT_PROXY
#> 162               proxy_cainfo               CURLOPT_PROXY_CAINFO
#> 163          proxy_cainfo_blob          CURLOPT_PROXY_CAINFO_BLOB
#> 164               proxy_capath               CURLOPT_PROXY_CAPATH
#> 165              proxy_crlfile              CURLOPT_PROXY_CRLFILE
#> 166           proxy_issuercert           CURLOPT_PROXY_ISSUERCERT
#> 167      proxy_issuercert_blob      CURLOPT_PROXY_ISSUERCERT_BLOB
#> 168            proxy_keypasswd            CURLOPT_PROXY_KEYPASSWD
#> 169      proxy_pinnedpublickey      CURLOPT_PROXY_PINNEDPUBLICKEY
#> 170         proxy_service_name         CURLOPT_PROXY_SERVICE_NAME
#> 171      proxy_ssl_cipher_list      CURLOPT_PROXY_SSL_CIPHER_LIST
#> 172          proxy_ssl_options          CURLOPT_PROXY_SSL_OPTIONS
#> 173       proxy_ssl_verifyhost       CURLOPT_PROXY_SSL_VERIFYHOST
#> 174       proxy_ssl_verifypeer       CURLOPT_PROXY_SSL_VERIFYPEER
#> 175              proxy_sslcert              CURLOPT_PROXY_SSLCERT
#> 176         proxy_sslcert_blob         CURLOPT_PROXY_SSLCERT_BLOB
#> 177          proxy_sslcerttype          CURLOPT_PROXY_SSLCERTTYPE
#> 178               proxy_sslkey               CURLOPT_PROXY_SSLKEY
#> 179          proxy_sslkey_blob          CURLOPT_PROXY_SSLKEY_BLOB
#> 180           proxy_sslkeytype           CURLOPT_PROXY_SSLKEYTYPE
#> 181           proxy_sslversion           CURLOPT_PROXY_SSLVERSION
#> 182        proxy_tls13_ciphers        CURLOPT_PROXY_TLS13_CIPHERS
#> 183     proxy_tlsauth_password     CURLOPT_PROXY_TLSAUTH_PASSWORD
#> 184         proxy_tlsauth_type         CURLOPT_PROXY_TLSAUTH_TYPE
#> 185     proxy_tlsauth_username     CURLOPT_PROXY_TLSAUTH_USERNAME
#> 186        proxy_transfer_mode        CURLOPT_PROXY_TRANSFER_MODE
#> 187                  proxyauth                  CURLOPT_PROXYAUTH
#> 188                proxyheader                CURLOPT_PROXYHEADER
#> 189              proxypassword              CURLOPT_PROXYPASSWORD
#> 190                  proxyport                  CURLOPT_PROXYPORT
#> 191                  proxytype                  CURLOPT_PROXYTYPE
#> 192              proxyusername              CURLOPT_PROXYUSERNAME
#> 193               proxyuserpwd               CURLOPT_PROXYUSERPWD
#> 194                        put                        CURLOPT_PUT
#> 195                 quick_exit                 CURLOPT_QUICK_EXIT
#> 196                      quote                      CURLOPT_QUOTE
#> 197                random_file                CURLOPT_RANDOM_FILE
#> 198                      range                      CURLOPT_RANGE
#> 199                   readdata                   CURLOPT_READDATA
#> 200               readfunction               CURLOPT_READFUNCTION
#> 201            redir_protocols            CURLOPT_REDIR_PROTOCOLS
#> 202        redir_protocols_str        CURLOPT_REDIR_PROTOCOLS_STR
#> 203                    referer                    CURLOPT_REFERER
#> 204             request_target             CURLOPT_REQUEST_TARGET
#> 205                    resolve                    CURLOPT_RESOLVE
#> 206        resolver_start_data        CURLOPT_RESOLVER_START_DATA
#> 207    resolver_start_function    CURLOPT_RESOLVER_START_FUNCTION
#> 208                resume_from                CURLOPT_RESUME_FROM
#> 209          resume_from_large          CURLOPT_RESUME_FROM_LARGE
#> 210           rtsp_client_cseq           CURLOPT_RTSP_CLIENT_CSEQ
#> 211               rtsp_request               CURLOPT_RTSP_REQUEST
#> 212           rtsp_server_cseq           CURLOPT_RTSP_SERVER_CSEQ
#> 213            rtsp_session_id            CURLOPT_RTSP_SESSION_ID
#> 214            rtsp_stream_uri            CURLOPT_RTSP_STREAM_URI
#> 215             rtsp_transport             CURLOPT_RTSP_TRANSPORT
#> 216               sasl_authzid               CURLOPT_SASL_AUTHZID
#> 217                    sasl_ir                    CURLOPT_SASL_IR
#> 218                   seekdata                   CURLOPT_SEEKDATA
#> 219               seekfunction               CURLOPT_SEEKFUNCTION
#> 220    server_response_timeout    CURLOPT_SERVER_RESPONSE_TIMEOUT
#> 221               service_name               CURLOPT_SERVICE_NAME
#> 222                      share                      CURLOPT_SHARE
#> 223                sockoptdata                CURLOPT_SOCKOPTDATA
#> 224            sockoptfunction            CURLOPT_SOCKOPTFUNCTION
#> 225                socks5_auth                CURLOPT_SOCKS5_AUTH
#> 226          socks5_gssapi_nec          CURLOPT_SOCKS5_GSSAPI_NEC
#> 227      socks5_gssapi_service      CURLOPT_SOCKS5_GSSAPI_SERVICE
#> 228             ssh_auth_types             CURLOPT_SSH_AUTH_TYPES
#> 229            ssh_compression            CURLOPT_SSH_COMPRESSION
#> 230    ssh_host_public_key_md5    CURLOPT_SSH_HOST_PUBLIC_KEY_MD5
#> 231 ssh_host_public_key_sha256 CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256
#> 232            ssh_hostkeydata            CURLOPT_SSH_HOSTKEYDATA
#> 233        ssh_hostkeyfunction        CURLOPT_SSH_HOSTKEYFUNCTION
#> 234                ssh_keydata                CURLOPT_SSH_KEYDATA
#> 235            ssh_keyfunction            CURLOPT_SSH_KEYFUNCTION
#> 236             ssh_knownhosts             CURLOPT_SSH_KNOWNHOSTS
#> 237        ssh_private_keyfile        CURLOPT_SSH_PRIVATE_KEYFILE
#> 238         ssh_public_keyfile         CURLOPT_SSH_PUBLIC_KEYFILE
#> 239            ssl_cipher_list            CURLOPT_SSL_CIPHER_LIST
#> 240               ssl_ctx_data               CURLOPT_SSL_CTX_DATA
#> 241           ssl_ctx_function           CURLOPT_SSL_CTX_FUNCTION
#> 242              ssl_ec_curves              CURLOPT_SSL_EC_CURVES
#> 243            ssl_enable_alpn            CURLOPT_SSL_ENABLE_ALPN
#> 244             ssl_enable_npn             CURLOPT_SSL_ENABLE_NPN
#> 245             ssl_falsestart             CURLOPT_SSL_FALSESTART
#> 246                ssl_options                CURLOPT_SSL_OPTIONS
#> 247        ssl_sessionid_cache        CURLOPT_SSL_SESSIONID_CACHE
#> 248             ssl_verifyhost             CURLOPT_SSL_VERIFYHOST
#> 249             ssl_verifypeer             CURLOPT_SSL_VERIFYPEER
#> 250           ssl_verifystatus           CURLOPT_SSL_VERIFYSTATUS
#> 251                    sslcert                    CURLOPT_SSLCERT
#> 252               sslcert_blob               CURLOPT_SSLCERT_BLOB
#> 253                sslcerttype                CURLOPT_SSLCERTTYPE
#> 254                  sslengine                  CURLOPT_SSLENGINE
#> 255          sslengine_default          CURLOPT_SSLENGINE_DEFAULT
#> 256                     sslkey                     CURLOPT_SSLKEY
#> 257                sslkey_blob                CURLOPT_SSLKEY_BLOB
#> 258                 sslkeytype                 CURLOPT_SSLKEYTYPE
#> 259                 sslversion                 CURLOPT_SSLVERSION
#> 260                     stderr                     CURLOPT_STDERR
#> 261             stream_depends             CURLOPT_STREAM_DEPENDS
#> 262           stream_depends_e           CURLOPT_STREAM_DEPENDS_E
#> 263              stream_weight              CURLOPT_STREAM_WEIGHT
#> 264   suppress_connect_headers   CURLOPT_SUPPRESS_CONNECT_HEADERS
#> 265               tcp_fastopen               CURLOPT_TCP_FASTOPEN
#> 266              tcp_keepalive              CURLOPT_TCP_KEEPALIVE
#> 267               tcp_keepidle               CURLOPT_TCP_KEEPIDLE
#> 268              tcp_keepintvl              CURLOPT_TCP_KEEPINTVL
#> 269                tcp_nodelay                CURLOPT_TCP_NODELAY
#> 270              telnetoptions              CURLOPT_TELNETOPTIONS
#> 271               tftp_blksize               CURLOPT_TFTP_BLKSIZE
#> 272            tftp_no_options            CURLOPT_TFTP_NO_OPTIONS
#> 273              timecondition              CURLOPT_TIMECONDITION
#> 274                    timeout                    CURLOPT_TIMEOUT
#> 275                 timeout_ms                 CURLOPT_TIMEOUT_MS
#> 276                  timevalue                  CURLOPT_TIMEVALUE
#> 277            timevalue_large            CURLOPT_TIMEVALUE_LARGE
#> 278              tls13_ciphers              CURLOPT_TLS13_CIPHERS
#> 279           tlsauth_password           CURLOPT_TLSAUTH_PASSWORD
#> 280               tlsauth_type               CURLOPT_TLSAUTH_TYPE
#> 281           tlsauth_username           CURLOPT_TLSAUTH_USERNAME
#> 282                trailerdata                CURLOPT_TRAILERDATA
#> 283            trailerfunction            CURLOPT_TRAILERFUNCTION
#> 284          transfer_encoding          CURLOPT_TRANSFER_ENCODING
#> 285               transfertext               CURLOPT_TRANSFERTEXT
#> 286           unix_socket_path           CURLOPT_UNIX_SOCKET_PATH
#> 287          unrestricted_auth          CURLOPT_UNRESTRICTED_AUTH
#> 288         upkeep_interval_ms         CURLOPT_UPKEEP_INTERVAL_MS
#> 289                     upload                     CURLOPT_UPLOAD
#> 290          upload_buffersize          CURLOPT_UPLOAD_BUFFERSIZE
#> 291                        url                        CURLOPT_URL
#> 292                    use_ssl                    CURLOPT_USE_SSL
#> 293                  useragent                  CURLOPT_USERAGENT
#> 294                   username                   CURLOPT_USERNAME
#> 295                    userpwd                    CURLOPT_USERPWD
#> 296                    verbose                    CURLOPT_VERBOSE
#> 297              wildcardmatch              CURLOPT_WILDCARDMATCH
#> 298                  writedata                  CURLOPT_WRITEDATA
#> 299              writefunction              CURLOPT_WRITEFUNCTION
#> 300                 ws_options                 CURLOPT_WS_OPTIONS
#> 301               xferinfodata               CURLOPT_XFERINFODATA
#> 302           xferinfofunction           CURLOPT_XFERINFOFUNCTION
#> 303             xoauth2_bearer             CURLOPT_XOAUTH2_BEARER
#>         type
#> 1     string
#> 2     string
#> 3    integer
#> 4    integer
#> 5     string
#> 6    integer
#> 7    integer
#> 8    integer
#> 9     string
#> 10   integer
#> 11   integer
#> 12    string
#> 13      <NA>
#> 14    string
#> 15   integer
#> 16  function
#> 17    string
#> 18  function
#> 19    string
#> 20  function
#> 21   integer
#> 22    string
#> 23   integer
#> 24   integer
#> 25  function
#> 26  function
#> 27  function
#> 28    string
#> 29    string
#> 30    string
#> 31    string
#> 32   integer
#> 33    string
#> 34   integer
#> 35    string
#> 36    string
#> 37    string
#> 38    string
#> 39  function
#> 40    string
#> 41   integer
#> 42   integer
#> 43   integer
#> 44    string
#> 45    string
#> 46    string
#> 47    string
#> 48   integer
#> 49   integer
#> 50   integer
#> 51   integer
#> 52   integer
#> 53    string
#> 54    string
#> 55    string
#> 56   integer
#> 57   integer
#> 58   integer
#> 59    string
#> 60  function
#> 61   integer
#> 62   integer
#> 63   integer
#> 64    string
#> 65    string
#> 66   integer
#> 67   integer
#> 68   integer
#> 69   integer
#> 70   integer
#> 71   integer
#> 72   integer
#> 73    string
#> 74   integer
#> 75   integer
#> 76   integer
#> 77    string
#> 78   integer
#> 79   integer
#> 80    string
#> 81  function
#> 82   integer
#> 83    string
#> 84   integer
#> 85    string
#> 86  function
#> 87    string
#> 88  function
#> 89   integer
#> 90    string
#> 91   integer
#> 92   integer
#> 93   integer
#> 94   integer
#> 95   integer
#> 96    string
#> 97    string
#> 98   integer
#> 99   integer
#> 100  integer
#> 101   number
#> 102   string
#> 103   string
#> 104 function
#> 105   string
#> 106 function
#> 107  integer
#> 108   string
#> 109     <NA>
#> 110  integer
#> 111   string
#> 112   string
#> 113  integer
#> 114  integer
#> 115   string
#> 116  integer
#> 117  integer
#> 118   string
#> 119   string
#> 120   string
#> 121  integer
#> 122   number
#> 123   number
#> 124  integer
#> 125  integer
#> 126  integer
#> 127   number
#> 128  integer
#> 129  integer
#> 130  integer
#> 131   string
#> 132  integer
#> 133   string
#> 134  integer
#> 135  integer
#> 136  integer
#> 137  integer
#> 138   string
#> 139  integer
#> 140   string
#> 141 function
#> 142   string
#> 143  integer
#> 144   string
#> 145  integer
#> 146  integer
#> 147  integer
#> 148   string
#> 149  integer
#> 150   number
#> 151   string
#> 152  integer
#> 153   string
#> 154   string
#> 155   string
#> 156 function
#> 157   string
#> 158 function
#> 159  integer
#> 160   string
#> 161   string
#> 162   string
#> 163     <NA>
#> 164   string
#> 165   string
#> 166   string
#> 167     <NA>
#> 168   string
#> 169   string
#> 170   string
#> 171   string
#> 172  integer
#> 173  integer
#> 174  integer
#> 175   string
#> 176     <NA>
#> 177   string
#> 178   string
#> 179     <NA>
#> 180   string
#> 181  integer
#> 182   string
#> 183   string
#> 184   string
#> 185   string
#> 186  integer
#> 187  integer
#> 188   string
#> 189   string
#> 190  integer
#> 191  integer
#> 192   string
#> 193   string
#> 194  integer
#> 195  integer
#> 196   string
#> 197   string
#> 198   string
#> 199   string
#> 200 function
#> 201  integer
#> 202   string
#> 203   string
#> 204   string
#> 205   string
#> 206   string
#> 207 function
#> 208  integer
#> 209   number
#> 210  integer
#> 211  integer
#> 212  integer
#> 213   string
#> 214   string
#> 215   string
#> 216   string
#> 217  integer
#> 218   string
#> 219 function
#> 220  integer
#> 221   string
#> 222   string
#> 223   string
#> 224 function
#> 225  integer
#> 226  integer
#> 227   string
#> 228  integer
#> 229  integer
#> 230   string
#> 231   string
#> 232   string
#> 233 function
#> 234   string
#> 235 function
#> 236   string
#> 237   string
#> 238   string
#> 239   string
#> 240   string
#> 241 function
#> 242   string
#> 243  integer
#> 244  integer
#> 245  integer
#> 246  integer
#> 247  integer
#> 248  integer
#> 249  integer
#> 250  integer
#> 251   string
#> 252     <NA>
#> 253   string
#> 254   string
#> 255  integer
#> 256   string
#> 257     <NA>
#> 258   string
#> 259  integer
#> 260   string
#> 261   string
#> 262   string
#> 263  integer
#> 264  integer
#> 265  integer
#> 266  integer
#> 267  integer
#> 268  integer
#> 269  integer
#> 270   string
#> 271  integer
#> 272  integer
#> 273  integer
#> 274  integer
#> 275  integer
#> 276  integer
#> 277   number
#> 278   string
#> 279   string
#> 280   string
#> 281   string
#> 282   string
#> 283 function
#> 284  integer
#> 285  integer
#> 286   string
#> 287  integer
#> 288  integer
#> 289  integer
#> 290  integer
#> 291   string
#> 292  integer
#> 293   string
#> 294   string
#> 295   string
#> 296  integer
#> 297  integer
#> 298   string
#> 299 function
#> 300  integer
#> 301   string
#> 302 function
#> 303   string
httr_options("post")
#>                    httr                     libcurl    type
#> 33       copypostfields      CURLOPT_COPYPOSTFIELDS  string
#> 97             httppost            CURLOPT_HTTPPOST  string
#> 131            mimepost            CURLOPT_MIMEPOST  string
#> 147                post                CURLOPT_POST integer
#> 148          postfields          CURLOPT_POSTFIELDS  string
#> 149       postfieldsize       CURLOPT_POSTFIELDSIZE integer
#> 150 postfieldsize_large CURLOPT_POSTFIELDSIZE_LARGE  number
#> 151           postquote           CURLOPT_POSTQUOTE  string
#> 152           postredir           CURLOPT_POSTREDIR integer

# Use curl_docs to read the curl documentation for each option.
# You can use either the httr or curl option name.
curl_docs("userpwd")
#> Please point your browser to the following url: 
#> http://curl.haxx.se/libcurl/c/CURLOPT_USERPWD.html
curl_docs("CURLOPT_USERPWD")
#> Please point your browser to the following url: 
#> http://curl.haxx.se/libcurl/c/CURLOPT_USERPWD.html
```
