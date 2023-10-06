if (other.is_active && other.leaves_count < other.leaves_max)
{
	other.leaves_count++;
	instance_destroy();
}