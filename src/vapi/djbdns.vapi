/*
 *    djbdns.vapi
 *
 *    Copyright (C) 2013-2014  Venom authors and contributors
 *
 *    This file is part of Venom.
 *
 *    Venom is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    Venom is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with Venom.  If not, see <http://www.gnu.org/licenses/>.
 */

[CCode (cprefix = "", cheader_filename = "dns.h")]
namespace DJBDns {
  [CCode (cname = "stralloc", destroy_function = "", has_type_id = false)]
  public struct AllocatedString {
    string s;
    uint len;
    uint a;
  }
  [CCode (cname = "dns_txt")]
  public static int dns_txt(out AllocatedString answer, AllocatedString fqdn);
}
