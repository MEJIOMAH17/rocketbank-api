.class public final Lcom/google/maps/android/R$id;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 0

    .line 1046
    sget-object p1, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-object p1
.end method
