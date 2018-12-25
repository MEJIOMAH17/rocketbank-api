.class public final Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;
.super Ljava/lang/Object;
.source "MessageOutgoing.kt"


# instance fields
.field private love:Z

.field private operation:J

.field private sourceImage:Ljava/lang/String;

.field private sourceImageUri:Landroid/net/Uri;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLove()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->love:Z

    return v0
.end method

.method public final getOperation()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->operation:J

    return-wide v0
.end method

.method public final getSourceImage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->sourceImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceImageUri()Landroid/net/Uri;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->sourceImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setLove(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->love:Z

    return-void
.end method

.method public final setOperation(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->operation:J

    return-void
.end method

.method public final setSourceImage(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->sourceImage:Ljava/lang/String;

    return-void
.end method

.method public final setSourceImageUri(Landroid/net/Uri;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->sourceImageUri:Landroid/net/Uri;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageOutgoing;->text:Ljava/lang/String;

    return-void
.end method
