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


package org.ds.amqp.protocol.connection
{
	import flash.utils.Dictionary;
	import org.ds.amqp.protocol.Method;
	import org.ds.amqp.transport.Buffer;
	
	public class Close extends Method
	{

		public var replyCode               :int;
		public var replyText               :String;
		public var classId                 :int;
		public var methodId                :int;

		public function Close() {
			_classId  = 10;
			_methodId = 60;
		}


		public override function writeTo(buf:Buffer):void {

			buf.writeShort(this.replyCode);
			buf.writeShortstr(this.replyText);
			buf.writeShort(this.classId);
			buf.writeShort(this.methodId);
		}
		
		public override function readFrom(buf:Buffer):void {

			this.replyCode        = buf.readShort();
			this.replyText        = buf.readShortstr();
			this.classId          = buf.readShort();
			this.methodId         = buf.readShort();
		}
	}
}