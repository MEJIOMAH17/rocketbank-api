.class final Lcom/flurry/sdk/kr$4;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kr$a;

.field final synthetic b:Lcom/flurry/sdk/kr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kr;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/kr$4;->b:Lcom/flurry/sdk/kr;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flurry/sdk/kr$4;->a:Lcom/flurry/sdk/kr$a;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/kr$4;->b:Lcom/flurry/sdk/kr;

    .line 1209
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v1

    .line 2079
    iget-boolean v1, v1, Lcom/flurry/sdk/jk;->b:Z

    const/4 v2, 0x5

    if-nez v1, :cond_0

    .line 1210
    iget-object v0, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1215
    :cond_0
    iget-object v1, v0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    .line 2228
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1216
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    .line 1217
    iget-object v0, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1221
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1222
    invoke-virtual {v0}, Lcom/flurry/sdk/kr;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1226
    iget-object v5, v0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v5, v3}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1228
    iget-object v6, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Number of not sent blocks = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1230
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1232
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1234
    iget-object v8, v0, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1239
    invoke-virtual {v0}, Lcom/flurry/sdk/kr;->c()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1243
    new-instance v8, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v9

    .line 3097
    iget-object v9, v9, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1243
    invoke-static {v7}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    const-string v10, ".yflurrydatasenderblock."

    new-instance v11, Lcom/flurry/sdk/kr$6;

    invoke-direct {v11, v0}, Lcom/flurry/sdk/kr$6;-><init>(Lcom/flurry/sdk/kr;)V

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v12, v11}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 1250
    invoke-virtual {v8}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/ks;

    const/4 v9, 0x6

    if-nez v8, :cond_3

    .line 1252
    iget-object v8, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string v10, "Internal ERROR! Cannot read!"

    invoke-static {v9, v8, v10}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v8, v0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v8, v7, v3}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 3106
    :cond_3
    iget-object v8, v8, Lcom/flurry/sdk/ks;->b:[B

    if-eqz v8, :cond_5

    .line 1258
    array-length v10, v8

    if-nez v10, :cond_4

    goto :goto_1

    .line 1264
    :cond_4
    iget-object v9, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string v10, "Reading block info "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v9, v0, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-virtual {v0, v8, v7, v3}, Lcom/flurry/sdk/kr;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1259
    :cond_5
    :goto_1
    iget-object v8, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string v10, "Internal ERROR! Report is empty!"

    invoke-static {v9, v8, v10}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v8, v0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v8, v7, v3}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
