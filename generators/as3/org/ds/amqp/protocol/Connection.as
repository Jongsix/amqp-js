/**
---------------------------------------------------------------------------

Copyright (c) 2009 Dan Simpson

Auto-Generated @ Wed Jun 17 00:50:01 -0700 2009.  Do not edit this file, extend it you must.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---------------------------------------------------------------------------
**/
package org.ds.amqp.protocol
{
	import flash.utils.Dictionary;
	import org.ds.amqp.protocol.connection.*;
	import org.ds.amqp.transport.Buffer;

	public class Connection extends MessageClass
	{
		private static var methodMap	:Dictionary = new Dictionary();
		
		methodMap[10]	= Start;
		methodMap[11]	= StartOk;
		methodMap[20]	= Secure;
		methodMap[21]	= SecureOk;
		methodMap[30]	= Tune;
		methodMap[31]	= TuneOk;
		methodMap[40]	= Open;
		methodMap[41]	= OpenOk;
		methodMap[50]	= Redirect;
		methodMap[60]	= Close;
		methodMap[61]	= CloseOk;
		
		public static function getMethod(id:int):Method {
			return new methodMap[id]();
		}
		


		public function Connection() {
			_classId  = 10;
		}

		public override function writeTo(buf:Buffer):void {

		}

		public override function readFrom(buf:Buffer):void {

		}
	}
}