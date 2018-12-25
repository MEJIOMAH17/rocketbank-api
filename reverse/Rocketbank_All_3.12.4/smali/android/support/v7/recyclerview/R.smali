.class public Landroid/support/v7/recyclerview/R;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/recyclerview/R$styleable;,
        Landroid/support/v7/recyclerview/R$id;,
        Landroid/support/v7/recyclerview/R$dimen;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

.field private targetDirectory:Ljava/io/File;

.field private final targetDirectoryName:Ljava/lang/String;

.field private final workingDirectory:Ljava/io/File;

.field private final workingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object p1, p0, Landroid/support/v7/recyclerview/R;->context:Landroid/content/Context;

    .line 1053
    iput-object p2, p0, Landroid/support/v7/recyclerview/R;->workingDirectory:Ljava/io/File;

    .line 1054
    iput-object p4, p0, Landroid/support/v7/recyclerview/R;->targetDirectoryName:Ljava/lang/String;

    .line 1056
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Landroid/support/v7/recyclerview/R;->workingDirectory:Ljava/io/File;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v7/recyclerview/R;->workingFile:Ljava/io/File;

    .line 1058
    new-instance p1, Lio/fabric/sdk/android/services/common/QueueFile;

    iget-object p2, p0, Landroid/support/v7/recyclerview/R;->workingFile:Ljava/io/File;

    invoke-direct {p1, p2}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 1064
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Landroid/support/v7/recyclerview/R;->workingDirectory:Ljava/io/File;

    iget-object p3, p0, Landroid/support/v7/recyclerview/R;->targetDirectoryName:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v7/recyclerview/R;->targetDirectory:Ljava/io/File;

    .line 1065
    iget-object p1, p0, Landroid/support/v7/recyclerview/R;->targetDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1066
    iget-object p1, p0, Landroid/support/v7/recyclerview/R;->targetDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final add([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/QueueFile;->add([B)V

    return-void
.end method

.method public final canWorkingFileStore(II)Z
    .locals 1

    .line 1178
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/services/common/QueueFile;->hasSpaceFor(II)Z

    move-result p1

    return p1
.end method

.method public final deleteFilesInRollOverDirectory(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1151
    iget-object v1, p0, Landroid/support/v7/recyclerview/R;->context:Landroid/content/Context;

    const-string v2, "deleting sent analytics file %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1152
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1151
    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final deleteWorkingFile()V
    .locals 1

    .line 1165
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :catch_0
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final getAllFilesInRollOverDirectory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->targetDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchOfFilesToSend$22f3aa59()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    iget-object v1, p0, Landroid/support/v7/recyclerview/R;->targetDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 1138
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMoveOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getWorkingFileUsedSizeInBytes()I
    .locals 1

    .line 1077
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v0

    return v0
.end method

.method public final isWorkingFileEmpty()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final rollOver(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->close()V

    .line 1084
    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->workingFile:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/support/v7/recyclerview/R;->targetDirectory:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1104
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1105
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/support/v7/recyclerview/R;->getMoveOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    .line 1106
    :try_start_2
    new-array p1, p1, [B

    invoke-static {v2, v1, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "Failed to close file input stream"

    .line 1108
    invoke-static {v2, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    const-string p1, "Failed to close output stream"

    .line 1109
    invoke-static {v1, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1086
    new-instance p1, Lio/fabric/sdk/android/services/common/QueueFile;

    iget-object v0, p0, Landroid/support/v7/recyclerview/R;->workingFile:Ljava/io/File;

    invoke-direct {p1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Landroid/support/v7/recyclerview/R;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    return-void

    :catchall_0
    move-exception p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, p1

    :goto_0
    const-string v3, "Failed to close file input stream"

    .line 1108
    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    const-string v2, "Failed to close output stream"

    .line 1109
    invoke-static {p1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method
