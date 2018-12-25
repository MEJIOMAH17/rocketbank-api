.class public final Lcom/flurry/sdk/ii$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/ii;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ky<",
            "Lcom/flurry/sdk/ij;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/ij$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ij$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/ii$a;->a:Lcom/flurry/sdk/ky;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1233
    :cond_0
    new-instance v3, Lcom/flurry/sdk/ii$a$2;

    invoke-direct {v3, v0, v1}, Lcom/flurry/sdk/ii$a$2;-><init>(Lcom/flurry/sdk/ii$a;Ljava/io/InputStream;)V

    .line 1240
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 1241
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v7, v2

    goto :goto_0

    :cond_1
    move-object v7, v4

    .line 1245
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 1246
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 1247
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1248
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 1249
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1250
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1251
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Lcom/flurry/sdk/ip;->a(I)Lcom/flurry/sdk/ip;

    move-result-object v15

    .line 1254
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1257
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_1
    if-ge v2, v5, :cond_2

    move/from16 v20, v5

    .line 1260
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v20

    move-object/from16 v1, p1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 1264
    :goto_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 1265
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 1266
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 1267
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 1268
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v19, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v19, v5

    .line 1272
    :goto_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 1274
    new-instance v5, Lcom/flurry/sdk/ii;

    move-object v6, v5

    invoke-direct/range {v6 .. v19}, Lcom/flurry/sdk/ii;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/ip;Ljava/util/Map;IILjava/lang/String;)V

    .line 1277
    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;J)J

    .line 1278
    invoke-static {v5, v3}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;Z)Z

    .line 2050
    iput v4, v5, Lcom/flurry/sdk/kp;->p:I

    .line 1281
    iget-object v1, v0, Lcom/flurry/sdk/ii$a;->a:Lcom/flurry/sdk/ky;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ky;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1282
    iput-object v1, v5, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    .line 1283
    invoke-virtual {v5}, Lcom/flurry/sdk/ii;->d()V

    return-object v5
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    check-cast p2, Lcom/flurry/sdk/ii;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2163
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ii$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ii$a$1;-><init>(Lcom/flurry/sdk/ii$a;Ljava/io/OutputStream;)V

    .line 2170
    invoke-static {p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2171
    invoke-static {p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 2174
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3038
    :goto_0
    iget-object v1, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4038
    iget-object v1, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 2178
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 2181
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5018
    :goto_1
    iget-wide v1, p2, Lcom/flurry/sdk/kp;->n:J

    .line 2184
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5026
    iget v1, p2, Lcom/flurry/sdk/kp;->p:I

    .line 2185
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2186
    invoke-static {p2}, Lcom/flurry/sdk/ii;->b(Lcom/flurry/sdk/ii;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2187
    invoke-static {p2}, Lcom/flurry/sdk/ii;->c(Lcom/flurry/sdk/ii;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2188
    invoke-static {p2}, Lcom/flurry/sdk/ii;->d(Lcom/flurry/sdk/ii;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2189
    invoke-static {p2}, Lcom/flurry/sdk/ii;->e(Lcom/flurry/sdk/ii;)Lcom/flurry/sdk/ip;

    move-result-object v1

    .line 5030
    iget v1, v1, Lcom/flurry/sdk/ip;->e:I

    .line 2189
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2191
    invoke-static {p2}, Lcom/flurry/sdk/ii;->f(Lcom/flurry/sdk/ii;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2193
    invoke-static {p2}, Lcom/flurry/sdk/ii;->f(Lcom/flurry/sdk/ii;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2195
    invoke-static {p2}, Lcom/flurry/sdk/ii;->f(Lcom/flurry/sdk/ii;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2196
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2198
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2201
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2202
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2206
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2209
    :cond_4
    invoke-static {p2}, Lcom/flurry/sdk/ii;->g(Lcom/flurry/sdk/ii;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2210
    invoke-static {p2}, Lcom/flurry/sdk/ii;->h(Lcom/flurry/sdk/ii;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2211
    invoke-static {p2}, Lcom/flurry/sdk/ii;->i(Lcom/flurry/sdk/ii;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2213
    invoke-static {p2}, Lcom/flurry/sdk/ii;->j(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2214
    invoke-static {p2}, Lcom/flurry/sdk/ii;->j(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, ""

    .line 2217
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2220
    :goto_3
    invoke-static {p2}, Lcom/flurry/sdk/ii;->k(Lcom/flurry/sdk/ii;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2222
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2224
    iget-object v0, p0, Lcom/flurry/sdk/ii$a;->a:Lcom/flurry/sdk/ky;

    iget-object p2, p2, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ky;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void

    :cond_6
    :goto_4
    return-void
.end method
