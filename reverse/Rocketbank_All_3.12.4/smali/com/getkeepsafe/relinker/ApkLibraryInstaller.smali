.class public final Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 150
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 152
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long v5, v1, v3

    move-wide v1, v5

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v1
.end method


# virtual methods
.method public final installLibrary$757ca6fb(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 51
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v7, v9, :cond_0

    .line 55
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/io/File;

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_1

    :catch_0
    move v7, v8

    goto :goto_0

    :cond_0
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_2

    if-eqz v7, :cond_1

    .line 134
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    return-void

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v5, v6

    :goto_3
    add-int/lit8 v8, v5, 0x1

    if-ge v5, v9, :cond_11

    .line 70
    :try_start_3
    array-length v5, v1

    move-object v12, v4

    move-object v13, v12

    move v11, v6

    :goto_4
    if-ge v11, v5, :cond_3

    aget-object v12, v1, v11

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lib"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v14, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-virtual {v7, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-nez v13, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    if-eqz v12, :cond_4

    const-string v5, "Looking for %s in APK..."

    .line 80
    new-array v11, v10, [Ljava/lang/Object;

    aput-object v12, v11, v6

    .line 1262
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    if-nez v13, :cond_6

    if-eqz v12, :cond_5

    .line 85
    new-instance v1, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v1, v12}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_5
    new-instance v1, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v1, v2}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v5, "Found %s! Extracting..."

    .line 91
    new-array v11, v10, [Ljava/lang/Object;

    aput-object v12, v11, v6

    .line 2262
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v12, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 93
    :try_start_4
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z

    move-result v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v5, :cond_7

    goto/16 :goto_9

    .line 104
    :cond_7
    :try_start_5
    invoke-virtual {v7, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 105
    :try_start_6
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 106
    :try_start_7
    invoke-static {v5, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v12

    .line 107
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->sync()V

    .line 108
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v14
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_9

    if-eqz v5, :cond_8

    .line 3170
    :try_start_8
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4170
    :catch_2
    :cond_8
    :try_start_9
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_9

    :cond_9
    if-eqz v5, :cond_a

    .line 5170
    :try_start_a
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 6170
    :catch_3
    :cond_a
    :try_start_b
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 124
    :catch_4
    :try_start_c
    invoke-virtual {v3, v10, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    invoke-virtual {v3, v10, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 126
    invoke-virtual {v3, v10}, Ljava/io/File;->setWritable(Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v7, :cond_b

    .line 134
    :try_start_d
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_5

    :catch_5
    return-void

    :cond_b
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v11, v4

    goto :goto_6

    :catch_6
    move-object v11, v4

    goto :goto_7

    :catch_7
    move-object v11, v4

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    move-object v11, v5

    :goto_6
    if-eqz v5, :cond_c

    .line 11170
    :try_start_e
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catch_8
    :cond_c
    if-eqz v11, :cond_d

    .line 12170
    :try_start_f
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 120
    :catch_9
    :cond_d
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catch_a
    move-object v5, v4

    move-object v11, v5

    :catch_b
    :goto_7
    if-eqz v5, :cond_e

    .line 9170
    :try_start_11
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catch_c
    :cond_e
    if-eqz v11, :cond_10

    .line 10170
    :try_start_12
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_9

    :catch_d
    move-object v5, v4

    move-object v11, v5

    :catch_e
    :goto_8
    if-eqz v5, :cond_f

    .line 7170
    :try_start_13
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :catch_f
    :cond_f
    if-eqz v11, :cond_10

    .line 8170
    :try_start_14
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catch_10
    :cond_10
    :goto_9
    move v5, v8

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :cond_11
    if-eqz v7, :cond_12

    .line 134
    :try_start_15
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_a

    :catch_11
    return-void

    :cond_12
    :goto_a
    return-void

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v7, v4

    :goto_b
    if-eqz v7, :cond_13

    :try_start_16
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    .line 136
    :catch_12
    :cond_13
    throw v1
.end method
