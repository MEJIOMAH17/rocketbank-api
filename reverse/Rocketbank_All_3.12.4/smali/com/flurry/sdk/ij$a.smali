.class public final Lcom/flurry/sdk/ij$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/ij;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1139
    :cond_0
    new-instance v1, Lcom/flurry/sdk/ij$a$2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/flurry/sdk/ij$a$2;-><init>(Lcom/flurry/sdk/ij$a;Ljava/io/InputStream;)V

    .line 1146
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1147
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 1148
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 1149
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 1150
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 1151
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/ik;->a(I)Lcom/flurry/sdk/ik;

    move-result-object v11

    .line 1152
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 1153
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1154
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 1155
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    move/from16 v18, v4

    move-wide/from16 v16, v5

    .line 1156
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 1158
    new-instance v1, Lcom/flurry/sdk/ij;

    const/4 v6, 0x0

    move-object v3, v1

    move-wide/from16 v19, v4

    move/from16 v5, v18

    move-object v4, v6

    move/from16 v21, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v3 .. v9}, Lcom/flurry/sdk/ij;-><init>(Lcom/flurry/sdk/ii;JJI)V

    .line 1159
    iput-boolean v0, v1, Lcom/flurry/sdk/ij;->d:Z

    .line 1160
    iput v10, v1, Lcom/flurry/sdk/ij;->e:I

    .line 1161
    iput-object v11, v1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 1162
    iput-object v12, v1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 1163
    iput v13, v1, Lcom/flurry/sdk/ij;->h:I

    .line 1164
    iput-wide v14, v1, Lcom/flurry/sdk/ij;->i:J

    move/from16 v0, v21

    .line 1165
    iput-boolean v0, v1, Lcom/flurry/sdk/ij;->j:Z

    move-wide/from16 v3, v19

    .line 1166
    iput-wide v3, v1, Lcom/flurry/sdk/ij;->k:J

    return-object v1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    check-cast p2, Lcom/flurry/sdk/ij;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2104
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ij$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ij$a$1;-><init>(Lcom/flurry/sdk/ij$a;Ljava/io/OutputStream;)V

    .line 2111
    iget p1, p2, Lcom/flurry/sdk/ij;->a:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2112
    iget-wide v1, p2, Lcom/flurry/sdk/ij;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2113
    iget-wide v1, p2, Lcom/flurry/sdk/ij;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2114
    iget-boolean p1, p2, Lcom/flurry/sdk/ij;->d:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2115
    iget p1, p2, Lcom/flurry/sdk/ij;->e:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2116
    iget-object p1, p2, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 3019
    iget p1, p1, Lcom/flurry/sdk/ik;->e:I

    .line 2116
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2118
    iget-object p1, p2, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2119
    iget-object p1, p2, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 2122
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2125
    :goto_0
    iget p1, p2, Lcom/flurry/sdk/ij;->h:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2126
    iget-wide v1, p2, Lcom/flurry/sdk/ij;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2127
    iget-boolean p1, p2, Lcom/flurry/sdk/ij;->j:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2128
    iget-wide p1, p2, Lcom/flurry/sdk/ij;->k:J

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2130
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
