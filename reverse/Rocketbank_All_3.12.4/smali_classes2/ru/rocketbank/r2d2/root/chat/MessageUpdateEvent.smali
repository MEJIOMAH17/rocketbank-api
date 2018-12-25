.class public final Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;
.super Ljava/lang/Object;
.source "MessageUpdateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent$Companion;

.field private static final PAGE_LOAD:I = 0x1

.field private static final REFRESH:I


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/manager/messsage/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final pageNumber:I

.field private final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->Companion:Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/manager/messsage/ChatMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    iput p2, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPAGE_LOAD$cp()I
    .locals 1

    .line 5
    sget v0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->PAGE_LOAD:I

    return v0
.end method

.method public static final synthetic access$getREFRESH$cp()I
    .locals 1

    .line 5
    sget v0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->REFRESH:I

    return v0
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;IILjava/util/List;ILjava/lang/Object;)Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->copy(IILjava/util/List;)Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/manager/messsage/ChatMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IILjava/util/List;)Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/manager/messsage/ChatMessage;",
            ">;)",
            "Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    iget v3, p1, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    iget v3, p1, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/manager/messsage/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final getPageNumber()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageUpdateEvent(pageNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->pageNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/MessageUpdateEvent;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
