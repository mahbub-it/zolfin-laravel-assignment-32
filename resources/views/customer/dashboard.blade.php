<h1>Customer Dashboard</h1>

<form method="post" action="{{ route('customer.logout') }}">
    @csrf
    <button type="submit" class="btn btn-danger">Sign Out<i class="dropdown-item-icon ti-power-off"></i></button>
</form>