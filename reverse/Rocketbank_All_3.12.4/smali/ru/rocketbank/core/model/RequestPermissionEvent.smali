.class public final Lru/rocketbank/core/model/RequestPermissionEvent;
.super Ljava/lang/Object;
.source "RequestPermissionEvent.kt"


# instance fields
.field private permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/RequestPermissionEvent;->permissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPermissions()[Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lru/rocketbank/core/model/RequestPermissionEvent;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method public final setPermissions([Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lru/rocketbank/core/model/RequestPermissionEvent;->permissions:[Ljava/lang/String;

    return-void
.end method
