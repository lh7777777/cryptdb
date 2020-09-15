/* $%BEGINLICENSE%$
 Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License as
 published by the Free Software Foundation; version 2 of the
 License.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 02110-1301  USA

 $%ENDLICENSE%$ */
 

#ifndef _NETWORK_MYSQLD_PROTO_H_
#define _NETWORK_MYSQLD_PROTO_H_

#include <glib.h>
#ifdef _WIN32
/* mysql.h needs SOCKET defined */
#include <winsock2.h>
#endif
#include <mysql.h>

#include "network-exports.h"
/*
 * 4.0 is missing too many things for us to support it, so we have to error out.
 */
#if MYSQL_VERSION_ID < 41000
#error You need at least MySQL 4.1 to compile this software. 
#endif
/*
 * 4.1 uses other defines
 *
 * this should be one step to get closer to backward-compatibility
 */
#if MYSQL_VERSION_ID < 50000
#ifndef __GTK_DOC_IGNORE__
#define COM_STMT_EXECUTE        COM_EXECUTE
#define COM_STMT_PREPARE        COM_PREPARE
#define COM_STMT_CLOSE          COM_CLOSE_STMT
#define COM_STMT_SEND_LONG_DATA COM_LONG_DATA
#define COM_STMT_RESET          COM_RESET_STMT
#endif
#endif

/**
 * MYSQLD_PACKET_OK:
 *
 * value of a OK packet
 */
#define MYSQLD_PACKET_OK   (0)
/**
 * MYSQLD_PACKET_RAW:
 *
 * internal
 */
#define MYSQLD_PACKET_RAW  (0xfa) /* used for proxy.response.type only */
/**
 * MYSQLD_PACKET_NULL:
 *
 * value of a NULL field
 */
#define MYSQLD_PACKET_NULL (0xfb) /* 0xfb */
                                  /* 0xfc */
                                  /* 0xfd */
/**
 * MYSQLD_PACKET_EOF:
 *
 * value of a EOF packet
 */
#define MYSQLD_PACKET_EOF  (0xfe) /* 0xfe */
/**
 * MYSQLD_PACKET_ERR:
 *
 * value of a ERR packet
 */
#define MYSQLD_PACKET_ERR  (0xff) /* 0xff */

/**
 * PACKET_LEN_MAX:
 *
 * max length of a mysql packet: 2^24-1
 */
#define PACKET_LEN_MAX     (0x00ffffff)

#include "network-packet.h" /* for backward compat, as network_packet_new() was previously defined here */

/**
 * network_mysqld_lenenc_type:
 * @NETWORK_MYSQLD_LENENC_TYPE_INT: int
 * @NETWORK_MYSQLD_LENENC_TYPE_NULL: null
 * @NETWORK_MYSQLD_LENENC_TYPE_EOF: EOF packet
 * @NETWORK_MYSQLD_LENENC_TYPE_ERR: ERR packet
 *
 * type of length encoding integer
 */
typedef enum {
	NETWORK_MYSQLD_LENENC_TYPE_INT,
	NETWORK_MYSQLD_LENENC_TYPE_NULL,
	NETWORK_MYSQLD_LENENC_TYPE_EOF,
	NETWORK_MYSQLD_LENENC_TYPE_ERR
} network_mysqld_lenenc_type;

NETWORK_API int network_mysqld_proto_skip(network_packet *packet, gsize size);
NETWORK_API int network_mysqld_proto_skip_network_header(network_packet *packet);

NETWORK_API int network_mysqld_proto_get_int_len(network_packet *packet, guint64 *v, gsize size);

NETWORK_API int network_mysqld_proto_get_int8(network_packet *packet, guint8 *v);
NETWORK_API int network_mysqld_proto_get_int16(network_packet *packet, guint16 *v);
NETWORK_API int network_mysqld_proto_get_int24(network_packet *packet, guint32 *v);
NETWORK_API int network_mysqld_proto_get_int32(network_packet *packet, guint32 *v);
NETWORK_API int network_mysqld_proto_get_int48(network_packet *packet, guint64 *v);
NETWORK_API int network_mysqld_proto_get_int64(network_packet *packet, guint64 *v);

NETWORK_API int network_mysqld_proto_peek_int_len(network_packet *packet, guint64 *v, gsize size);
NETWORK_API int network_mysqld_proto_peek_int8(network_packet *packet, guint8 *v);
NETWORK_API int network_mysqld_proto_peek_int16(network_packet *packet, guint16 *v);
NETWORK_API int network_mysqld_proto_peek_int32(network_packet *packet, guint32 *v);
NETWORK_API int network_mysqld_proto_find_int8(network_packet *packet, guint8 c, guint *pos);

NETWORK_API int network_mysqld_proto_append_int_len(GString *packet, guint64 num, gsize size);
NETWORK_API int network_mysqld_proto_append_int8(GString *packet, guint8 num);
NETWORK_API int network_mysqld_proto_append_int16(GString *packet, guint16 num);
NETWORK_API int network_mysqld_proto_append_int24(GString *packet, guint32 num);
NETWORK_API int network_mysqld_proto_append_int32(GString *packet, guint32 num);
NETWORK_API int network_mysqld_proto_append_int48(GString *packet, guint64 num);
NETWORK_API int network_mysqld_proto_append_int64(GString *packet, guint64 num);


NETWORK_API int network_mysqld_proto_get_lenenc_string(network_packet *packet, gchar **s, guint64 *_len);
NETWORK_API int network_mysqld_proto_get_string_len(network_packet *packet, gchar **s, gsize len);
NETWORK_API int network_mysqld_proto_get_string(network_packet *packet, gchar **s);

NETWORK_API int network_mysqld_proto_get_lenenc_gstring(network_packet *packet, GString *out);
NETWORK_API int network_mysqld_proto_get_gstring_len(network_packet *packet, gsize len, GString *out);
NETWORK_API int network_mysqld_proto_get_gstring(network_packet *packet, GString *out);

NETWORK_API int network_mysqld_proto_peek_lenenc_type(network_packet *packet, network_mysqld_lenenc_type *type);
NETWORK_API int network_mysqld_proto_get_lenenc_int(network_packet *packet, guint64 *v);

/**
 * network_mysqld_proto_fielddef_t:
 *
 * column definition
 */
typedef MYSQL_FIELD network_mysqld_proto_fielddef_t;
NETWORK_API network_mysqld_proto_fielddef_t *network_mysqld_proto_fielddef_new(void);
NETWORK_API void network_mysqld_proto_fielddef_free(network_mysqld_proto_fielddef_t *field);
NETWORK_API int network_mysqld_proto_get_fielddef(network_packet *packet, network_mysqld_proto_fielddef_t *field, guint32 capabilities);

/**
 * network_mysqld_proto_fielddefs_t:
 *
 * array of #network_mysqld_proto_fielddef_t
 */
typedef GPtrArray network_mysqld_proto_fielddefs_t;
NETWORK_API network_mysqld_proto_fielddefs_t *network_mysqld_proto_fielddefs_new(void);
NETWORK_API void network_mysqld_proto_fielddefs_free(network_mysqld_proto_fielddefs_t *fields);

NETWORK_API guint32 network_mysqld_proto_get_packet_len(GString *_header);
NETWORK_API guint8 network_mysqld_proto_get_packet_id(GString *_header);
NETWORK_API int network_mysqld_proto_append_packet_len(GString *_header, guint32 length);
NETWORK_API int network_mysqld_proto_append_packet_id(GString *_header, guint8 id);
NETWORK_API int network_mysqld_proto_set_packet_len(GString *_header, guint32 length);
NETWORK_API int network_mysqld_proto_set_packet_id(GString *_header, guint8 id);

NETWORK_API int network_mysqld_proto_append_lenenc_int(GString *packet, guint64 length);
NETWORK_API int network_mysqld_proto_append_lenenc_string_len(GString *packet, const char *s, guint64 length);
NETWORK_API int network_mysqld_proto_append_lenenc_string(GString *packet, const char *s);

NETWORK_API int network_mysqld_proto_password_hash(GString *response,
		const char *password, gsize password_len);
NETWORK_API int network_mysqld_proto_password_scramble(GString *response,
		const char *challenge, gsize challenge_len,
		const char *hashed_password, gsize hashed_password_len);
NETWORK_API gboolean network_mysqld_proto_password_check(
		const char *challenge, gsize challenge_len,
		const char *response, gsize response_len,
		const char *double_hashed, gsize double_hashed_len);
NETWORK_API int network_mysqld_proto_password_unscramble(
		GString *hashed_password,
		const char *challenge, gsize challenge_len,
		const char *response, gsize response_len,
		const char *double_hashed, gsize double_hashed_len);

#endif
