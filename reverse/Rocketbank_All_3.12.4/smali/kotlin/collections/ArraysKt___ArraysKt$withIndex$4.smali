.class final Lkotlin/collections/ArraysKt___ArraysKt$withIndex$4;
.super Lkotlin/jvm/internal/Lambda;
.source "_Arrays.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/ArraysKt___ArraysKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/collections/IntIterator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic receiver$0:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$4;->receiver$0:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$4;->invoke()Lkotlin/collections/IntIterator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/collections/IntIterator;
    .locals 1

    .line 9386
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$4;->receiver$0:[I

    invoke-static {v0}, Lkotlin/jvm/internal/Ref;->iterator([I)Lkotlin/collections/IntIterator;

    move-result-object v0

    return-object v0
.end method
