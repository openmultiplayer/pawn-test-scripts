TestFileFuncs()
{
	new File:f, buf[64];
	fremove("file_test.txt");
	if ((f = fopen("file_test.txt", io_write)))
	{
		fwrite(f, "line 1\r\n");
		fwrite(f, "line 2\r\n");
		fwrite(f, "line 3\r\n");
		printf("output: %d", ftell(f));
		fclose(f);
	}
	if ((f = ftemp()))
	{
		fwrite(f, "line 1\r\n");
		fwrite(f, "line 2\r\n");
		fwrite(f, "line 3\r\n");
		fwrite(f, "line 4\r\n");
		fwrite(f, "line 5\r\n");
		printf("output: %d", ftell(f));
		fclose(f);
	}
	printf("exists: %d, %08x", fexist("file_test.txt"), filecrc("file_test.txt"));
	fremove("file_test.txt");
	printf("exists: %d, %08x", fexist("file_test.txt"), filecrc("file_test.txt"));
	if ((f = fopen("file_test.txt", io_write)))
	{
		fwrite(f, "line 1\r\n");
		fwrite(f, "line 2\r\n");
		fwrite(f, "line 3\r\n");
		printf("tell: %d", ftell(f));
		printf("len: %d", flength(f));
		fseek(f, 0, seek_start);
		printf("tell: %d", ftell(f));
		printf("len: %d", flength(f));
		fwrite(f, "line ");
		fputchar(f, '5');
		printf("tell: %d", ftell(f));
		printf("len: %d", flength(f));
		fclose(f);
	}
	if ((f = fopen("file_test.txt", io_read)))
	{
		printf("%d", fread(f, buf));
		printf(buf);
		printf("%c", fgetchar(f));
		fclose(f);
	}
	fmkdir("test-dir-1");
	fcreatedir("test-dir-2");
	frename("test-dir-2", "renamed-dir");
	frename("file_test.txt", "file_test.bak");
	if ((f = fopen("file_test.txt", io_readwrite)))
	{
		buf[0] = EOS;
		fblockwrite(f, "Hello, this is a long string.  I want to see the result");
		fseek(f, 0, seek_start);
		fblockread(f, buf);
		printf(buf);
		fclose(f);
	}
	fcopy("file_test.txt", "file_test.cpy1");
	fcopy("file_test.txt", "file_test.cpy2");
	fcopy("file_test.txt", "file_test.cpy3");

	new size = 0, timestamp = 0, attrib = 0, inode = 0;
	printf("fstat: %d", fstat("file_test.txt", size, timestamp, attrib, inode));
	printf("fstat: %08x %08x %08x %08x", size, timestamp, attrib, inode);
	printf("fstat: %d", fstat("renamed-dir", size, timestamp, attrib, inode));
	printf("fstat: %08x %08x %08x %08x", size, timestamp, attrib, inode);
	printf("fattrib: %d", fattrib("file_test.txt", 0, 0));
	printf("fstat: %d", fstat("file_test.txt", size, timestamp, attrib, inode));
	printf("fstat: %08x %08x %08x %08x", size, timestamp, attrib, inode);
	for (new index = 0; (buf[0] = EOS, fmatch(buf, "file_test.*", index)); ++index)
	{
		printf("fmatch: %d, %s", index, buf);
	}
	for (new index = 0; (buf[0] = EOS, fmatch(buf, "file_test.*", index)); ++index)
	{
		printf("fmatch: %d, %s", index, buf);
	}
	fcreatedir("scan-test-0");
	fcreatedir("scan-test-2");
	fcreatedir("scan-test-4");
	fcreatedir("scan-test-6");
	ftouch("scan-test-1");
	ftouch("scan-test-3");
	ftouch("scan-test-5");
	ftouch("scan-test-7");
	for (new index = 0; (buf[0] = EOS, ffind("scan-test-*", buf, _, index)); )
	{
		printf("ffind: %d, %s", index, buf);
	}
	for (new index = 0; (buf[0] = EOS, dfind("scan-test-*", buf, _, index)); )
	{
		printf("dfind: %d, %s", index, buf);
	}
	for (new index = 0; (buf[0] = EOS, fmatch(buf, "scan-test-*", index)); ++index)
	{
		printf("fmatch: %d, %s", index, buf);
	}
	//sleep(1000);
	for (new i = 0; i != 100; ++i)
	{
		for (new j = 0; j != 1000000; ++j)
		{
		}
	}
	ftouch("file_test.txt");
	printf("fstat: %d", fstat("file_test.txt", size, timestamp, attrib, inode));
	printf("fstat: %08x %08x %08x %08x", size, timestamp, attrib, inode);
}

