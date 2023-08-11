.class Lcom/example/sgf/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/example/sgf/f;


# direct methods
.method constructor <init>(Lcom/example/sgf/f;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/g;->a:Lcom/example/sgf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/g;->a:Lcom/example/sgf/f;

    iget-object v0, v0, Lcom/example/sgf/f;->a:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
